require "rails_helper"

RSpec.describe SubscriberMailer, type: :mailer do
  describe "welcome" do
    let(:mail) { SubscriberMailer.welcome }

    it "renders the headers" do
      expect(mail.subject).to eq("Welcome")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "new_post_up" do
    let(:mail) { SubscriberMailer.new_post_up }

    it "renders the headers" do
      expect(mail.subject).to eq("New post up")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
