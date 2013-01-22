module ApplicationHelper
  NUMBER_WORDS = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve"
  }
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

  def number_to_word(number)
    word = NUMBER_WORDS[number]
    if word.nil?
      raise "Invalid number"
    else
      word
    end
  end

  def set_page_title(title)
    content_for(:page_title, content_tag(:h1, title))
  end

  def page_title
    if !content_for?(:page_title)
      set_page_title("Page Title")
    end
    content_for(:page_title)
  end

  def breadcrumb_trail
    link_to("Style Guide", root_path) + raw(" &gt; ") + params[:action].to_s.titleize
  end

  def lorem_ipsum
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  end

  def lorem_ipsum_long
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  end

  def white_box(&block)
    content = capture(&block)
    content_tag(:div, content, :class => "box")
  end

  def yellow_box(&block)
    content = capture(&block)
    content_tag(:div, content, :class => "box yellow")
  end
end
