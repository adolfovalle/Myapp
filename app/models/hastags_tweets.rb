class HastagsTweets < ActiveRecord::Base

attr_accesible :tweet_id , :hastag_id 
t.references :hastag
t.references :tweet

end
