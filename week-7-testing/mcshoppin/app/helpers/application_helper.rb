module ApplicationHelper
  
  def activeable_link_to(text, path)
    active = if request.path == path then 'active' end
    content_tag :li, class: active do 
      link_to text, path
    end
  end

  def user_nav
    if user_signed_in?
      'signed_in'
    else
      'signed_out'
    end
  end
  
end
