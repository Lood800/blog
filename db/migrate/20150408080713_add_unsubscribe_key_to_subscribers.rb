class AddUnsubscribeKeyToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :unsubscribe_key, :string
  end
end
