class AssetFixer
  URL_REGEX = /url\(['"]?([^'")]+)['"]?\)/

  def self.fix_assets(version, filename = nil)
    require 'open-uri'
    failed_downloads = []
    if filename
      css_files = [filename]
    else
      css_files = Dir.entries(stylesheets_directory(version)).reject{|f| !(f =~ /.css$/)}
    end

    css_files.each do |name|
      file_path = File.join(stylesheets_directory(version), name)
      replacements = []
      css_contents = File.read(file_path)
      matches = css_contents.scan(URL_REGEX)
      replaced_contents = css_contents.clone
      matches.each do |paths|
        path = paths[0]
        download_url = get_download_url(path)
        file_name = File.basename(path)
        if download_url.present?
          if download_file(download_url, version)
            replaced_contents.gsub!(path,"/assets/#{version}/#{file_name}")
          else
            failed_downloads << download_url
          end
        end
      end
      File.open(file_path, "w") do |file|
        file.write(replaced_contents)
      end
    end

    failed_downloads
  end

  def self.images_directory(version)
    File.join(Rails.root,"app","assets","images",version)
  end

  def self.stylesheets_directory(version)
    File.join(Rails.root,"app","assets","stylesheets",version)
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

  def self.download_file(download_url, version)
    begin
      downloaded_file = open(download_url, "User-Agent" => "Ruby/#{RUBY_VERSION}")
      file_name = File.basename(download_url).gsub(/[?].*$/,"").gsub(/#.*$/,"")
      contents = downloaded_file.read
      File.open(File.join(images_directory(version), file_name), "wb") do |copied_file|
        copied_file.write(contents)
      end
      true
    rescue OpenURI::HTTPError => e
      puts "Failed to download #{download_url} - #{e.message}"
      false
    end
  end
end