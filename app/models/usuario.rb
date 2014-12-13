class Usuario < ActiveRecord::Base
	has_many :tweets, :dependent => :destroy	
end

