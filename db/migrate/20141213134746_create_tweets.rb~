class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :id_tweet
	t.references 'usuario'
      t.text :mensaje
      t.integer :retweet_contador
      t.timestamp :fecha

      t.timestamps
    end
  end
end
