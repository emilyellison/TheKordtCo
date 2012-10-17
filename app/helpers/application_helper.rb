module ApplicationHelper
  
  def convert_to_markdown(content)
    Markdown.new(content, :space_after_headers => true).to_html.html_safe
  end
  
end
