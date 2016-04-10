class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :title
      t.string :feed_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
