class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :entry_id
      t.string :type
      t.integer :rating
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
