class CreateTweetsHastags < ActiveRecord::Migration
  def change
    create_table :tweets_hastags, :id => false do |t|
      t.text :id_tweet
      t.text :id_hastag
      t.references :tweet
      t.references :hastag
      t.timestamps
    end
  end
end
