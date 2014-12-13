class CreateTweetsPalabras < ActiveRecord::Migration
  def change
    create_table :tweets_palabras, :id => false do |t|
      t.text :id_tweet
      t.text :id_palabra
      t.references :tweet
      t.references :palabraclave
      t.timestamps
    end
  end
end
