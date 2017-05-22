module ApplicationHelper
  def app_name
    "My App"
  end

  def sidenav_path_match_activatable_li_tag(url, css_class='', &block)
    isMatch = request.path.include?(url)
    css_class = isMatch ? "active #{css_class}" : css_class
    content_tag :li, capture(url, &block), class: css_class
  end

  def sidenav_child_path_match_li(urls, css_class='', &block)
    isMatch = urls.include?(request.path)
    css_class = isMatch ? "active #{css_class}" : css_class
    content_tag :li, capture(url, &block), class: css_class
  end

  def sidenav_child_path_match_ul(urls, css_class='', &block)
    isMatch = urls.include?(request.path)
    css_class = isMatch ? "collapse in direct #{css_class}" : css_class
    content_tag :ul, capture(url, &block), class: css_class, 'aria-expanded': isMatch
  end

end
