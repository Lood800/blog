# Preview all emails at http://localhost:3000/rails/mailers/subscriber_mailer
class SubscriberMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/subscriber_mailer/welcome
  def welcome
    SubscriberMailer.welcome
  end

  # Preview this email at http://localhost:3000/rails/mailers/subscriber_mailer/new_post_up
  def new_post_up
    SubscriberMailer.new_post_up
  end

end
