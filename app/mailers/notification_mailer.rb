class NotificationMailer < ActionMailer::Base
  default to: "kordt@me.com"
  
  def notify_of_comment(comment)
    @comment = comment
    mail(:from => comment.name, :subject => "#{comment.name} submitted a comment to The Kordt Co.")
  end
  
end
