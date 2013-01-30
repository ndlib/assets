module BootstrapHelper
  def bootstrap_breadcrumb(*crumbs)
    crumbs.unshift(link_to("Bootstrap", bootstrap_path()))
    breadcrumb(*crumbs)
  end

  def bootstrap_header(title = nil)
    if title.present?
      content_title(title)
    end
    link_details = [
      ["Base CSS", :index],
      ["Components", :components], 
      ["Javascript", :javascript]
    ]
    links = []
    link_details.each do |name,action|
      options = {}
      if params[:controller] == "bootstrap" && params[:action] == action.to_s
        options[:class] = "active"
      end
      links << content_tag(:li, link_to(name, bootstrap_path(action)), options)
    end
    content_for(:content_title_links, content_tag(:ul, raw(links.join(" ")), class: "nav nav-pills"))
  end

  def bootstrap_sidebar(&block)
    content_for(:left_column,
      content_tag(:div,
        content_tag(:ul, capture(&block), class: 'nav nav-list bs-docs-sidenav'),
        class: 'bs-docs-sidebar'
      )
    )
  end
end
