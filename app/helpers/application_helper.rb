module ApplicationHelper
  # Includes the relevant library SSI file from http://www.library.nd.edu/ssi/<filename>.shtml
  def include_ssi(filepath)
    render :partial => "/layouts/include_ssi", :locals => {:filepath => filepath}
  end

  def read_ssi_file(filepath)
    require 'open-uri'
    ssi_url = "http://www.library.nd.edu/#{filepath}"
    f = open(ssi_url, "User-Agent" => "Ruby/#{RUBY_VERSION}")
    contents = f.read
    contents = contents.gsub(/(href|src)="\//,"\\1=\"https://www.library.nd.edu/")
    contents
  end
end
