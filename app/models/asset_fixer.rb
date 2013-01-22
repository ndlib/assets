class AssetFixer

  def self.fix_assets(version)
    require 'open-uri'
    css_directory = File.join(Rails.root,"app","assets","stylesheets",version)
    images_directory = css_directory = File.join(Rails.root,"app","assets","images",version)
    file = File.open(File.join(css_directory, "hesburgh.css"))
    file_contents = file.read
    url_regex = /url\(['"]?([^'")]+)['"]?\)/
    matches = file_contents.scan(url_regex)
    download_urls = []
    matches.each do |paths|
      path = paths[0]
      download_url = get_download_url(path)
      if download_url.present? && !download_urls.include?(download_url)
        download_urls << download_url
      end
    end
    begin
      last_download_url = nil
      last_file_name = nil
      download_urls.each do |download_url|
        last_download_url = download_url
        downloaded_file = open(download_url, "User-Agent" => "Ruby/#{RUBY_VERSION}")
        file_name = last_file_name = File.basename(download_url)
        contents = downloaded_file.read
        File.open(File.join(images_directory, file_name), "wb") do |copied_file|
          copied_file.write(contents)
        end
      end
    rescue Exception => e
      #puts file_contents
      puts last_download_url
      puts last_file_name
      raise e
    end
  end

  def self.get_download_url(path)
    if path =~ /^\/assets/
      # skip anything already in /assets
    elsif path =~ /^\//
      "https://www.library.nd.edu#{path}"
    else
      puts "Unknown path: #{path}"
    end
  end

  def self.test
    self.fix_assets("1.0")
  end
end