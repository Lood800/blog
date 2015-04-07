  class SubscriberMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscriber_mailer.welcome.subject
  #
  def welcome(subscriber)
    @subscriber = subscriber

    mail to: @subscriber.email, subject: "Welcome to Lood800.com"
  end

  def new_post_up(post, subscriber)
    @post = post
    @subscriber = subscriber
    mail to: @subscriber.email, subject: "New post by Lood800.com: #{@post.heading}"
  end


end
