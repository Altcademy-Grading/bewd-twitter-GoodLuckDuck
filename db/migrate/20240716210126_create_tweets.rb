class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :message
      t.references :user, null: false, foreign_key: true
      t.string :timestamps

      t.timestamps
    end
  end
end
