class CreatePalabrasTweets < ActiveRecord::Migration
  def change
    create_table :palabras_tweets do |t|

      t.timestamps
    end
  end
end
