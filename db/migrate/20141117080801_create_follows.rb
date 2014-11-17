class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :user_id
      t.integer :followed_user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
