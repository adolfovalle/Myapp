class PalabrasTweets < ActiveRecord::Base

attr_accesible :tweet_id , :palabra_id 
t.references :palabra
t.references :tweet
end
