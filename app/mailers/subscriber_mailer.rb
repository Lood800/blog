class SubscriberMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriber_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriber_mailer.new_post_up.subject
  #
  def new_post_up
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
