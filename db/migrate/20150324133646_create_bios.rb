class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :name
      t.string :info
      t.text :body
      t.string :profile_pic

      t.timestamps null: false
    end
  end
end
