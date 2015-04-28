require 'rails_helper'
 
RSpec.describe SubscriberMailer do
  describe 'welcome' do
    let(:subscriber) { FactoryGirl.create(:subscriber) }
    let(:mail) { SubscriberMailer.welcome(subscriber) }
 
    it 'renders the subject' do
      expect(mail.subject).to eql("Welcome to Lood800.com")
    end
 
    it 'renders the receiver email' do
      expect(mail.to).to eql([subscriber.email])
    end
 
    it 'renders the sender email' do
      expect(mail.from).to eql(['lodewicus@gmail.com'])
    end

    it 'assigns @name' do
      expect(mail.body.encoded).to match(subscriber.name)
    end

  end
end


