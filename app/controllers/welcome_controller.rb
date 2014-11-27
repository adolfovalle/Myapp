class WelcomeController < ApplicationController
  def index
def index
  	require 'twitter'
	client = Twitter::Streaming::Client.new do |config|
  		config.consumer_key        = svmHMBBvtf5WSz8Jvu54Ouy23
  		config.consumer_secret     = z6HY0kZjuFsyNo8XLT0RXT6zwIQzorlcEkGjR8kfegHAAaUoMH
  		config.access_token        = 2891572623-whlhrrDQbyVWbNimTZ6rR8hVRHV245rNSa0N0ST
  		config.access_token_secret = m96nlSAT5BRyxbk3oXR8Pef49lQINiWk4Yr9O3a2ughpJ
	end
  end
end
