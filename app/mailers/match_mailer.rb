class MatchMailer < ApplicationMailer
  def follow_up_mail(match)
    @match = match
    mail(from: Rails.configuration.mail_from,
         subject: Rails.configuration.follow_up_mail_subject,
         to: [match.newcomer.email, match.established.email])
  end

  def conclusion_mail(match)
    @match = match
    mail(from: Rails.configuration.mail_from,
         subject: Rails.configuration.conclusion_mail_subject,
         to: [match.newcomer.email, match.established.email])
  end
end
