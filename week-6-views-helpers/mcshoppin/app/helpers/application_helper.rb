module ApplicationHelper
  
  def activeable_link_to(text, path)
    active = if request.path == path then 'active' end
    content_tag :li, class: active do 
      link_to text, path
    end
  end
end
