class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.string :type
      t.integer :feed_id
      t.integer :follower_user_id
      t.integer :entry_id
      t.text :content
      t.integer :following_user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
