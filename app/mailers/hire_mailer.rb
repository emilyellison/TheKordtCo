class HireMailer < ActionMailer::Base
  default to: "emily@fixitwithcode.com"
  
  def hire_me(inquiry)
    @inquiry = inquiry
    mail(:from => inquiry.email, :subject => 'You have an e-mail from The Kordt Co.')
  end
end
