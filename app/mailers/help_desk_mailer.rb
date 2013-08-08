class HelpDeskMailer < ActionMailer::Base
  default from: "ticket@example.com", to: "helpdesk@example.com"

def ticket_email(ticket)
  @ticket = ticket
    mail(subject: 'Thank you for contacting the Helpdesk')
    reply_to: ce8b84e9693b33360b628a29fc31045d@inbound.postmarkapp.com
  end
end
