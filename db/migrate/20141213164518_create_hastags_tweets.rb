class CreateHastagsTweets < ActiveRecord::Migration
  def change
    create_table :hastags_tweets do |t|
      t.references :tweet
      t.references :hastag
    end
  end
end
