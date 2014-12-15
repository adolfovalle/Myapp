class CreatePalabrasTweets < ActiveRecord::Migration
  def change
    create_table :palabras_tweets do |t|
      t.references :tweet
      t.references :palabra
    end
  end
end
