module StaticHelper
  def set_page_title(title)
    content_for(:page_title, content_tag(:h1, title))
  end

  def page_title
    if !content_for?(:page_title)
      set_page_title("Assets")
    end
    content_for(:page_title)
  end

  def breadcrumb_trail
    link_to("Hesburgh Libraries", root_path) + raw(" &gt;") + " Assets"
  end

  def lorem_ipsum
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  end
end
