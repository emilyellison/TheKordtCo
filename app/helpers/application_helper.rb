module ApplicationHelper

  def convert_to_markdown(content)
    Markdown.new(content, :space_after_headers => true).to_html.html_safe
  end
  
  def google_map(location)
    "https://maps.google.com/maps?q=map+" + location.split(',').join.split(' ').join('+').downcase + "&ie=UTF-8&ei=L4qBUOyqO-2MyAHg64Bw&ved=0CAwQ_AUoAg"
  end
  
  def telephone_for(phone_number)
    "tel:" + phone_number.split('(').join.split(')').join.split(' ').join.split('-').join
  end
  
end
