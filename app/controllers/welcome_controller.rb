class WelcomeController < ApplicationController

def index
  	require 'twitter'
	client = Twitter::REST::Client.new do |config|
  		config.consumer_key        = "svmHMBBvtf5WSz8Jvu54Ouy23"
  		config.consumer_secret     = "z6HY0kZjuFsyNo8XLT0RXT6zwIQzorlcEkGjR8kfegHAAaUoMH"
  		config.access_token        = "2891572623-whlhrrDQbyVWbNimTZ6rR8hVRHV245rNSa0N0ST"
  		config.access_token_secret = "m96nlSAT5BRyxbk3oXR8Pef49lQINiWk4Yr9O3a2ughpJ"
	end
	topics = ["Aborto", "AbortoLegal", "SíAlAborto", "YoDecido", "ProAborto", "abortoChile", "AbortoTerapéutico", "AbortoTerapéuticoYA", "NoAlAborto", 			  "MarchaPorLaVida", "SíALaVida", "Noalaborto"]
	topics2 = ["Batman", "USA", "Hola"]
	contador = 0
	@tweets = []	
	a = ["perro","batman"]
	a.each do |i|
		client.search(i, :result_type => "recent").take(20).collect do |object|
			if object != nil
				contador += 1		
				puts object.text if object.is_a?(Twitter::Tweet)
		  		puts contador 
				@tweets.push contador
				@tweets.push object.text if object.is_a?(Twitter::Tweet)
			  	@tweets.push object.user.name if object.is_a?(Twitter::Tweet)
				@tweets.push "\n Nombre cuenta (Nick):#{object.user.screen_name}\n"
			end
		end
	end
  end
end

