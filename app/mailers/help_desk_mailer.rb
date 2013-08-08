class HelpDeskMailer < ActionMailer::Base
  default from: "ticket@example.com", to: "helpdesk@example.com"

def ticket_email(ticket)
  @ticket = ticket
  mail(subject: 'Thank you for contacting the Helpdesk')
end
