#encoding: utf-8
class WelcomeController < ApplicationController
#encoding: utf-8
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
	topics.each do |i|
		client.search(i, :result_type => "recent").take(2).collect do |object|
			if object != nil
				contador += 1		
				puts object.text if object.is_a?(Twitter::Tweet)
		  		puts contador 
				@tweets.push contador
				@tweets.push object.text if object.is_a?(Twitter::Tweet)
			  	@tweets.push object.user.name if object.is_a?(Twitter::Tweet)
				@tweets.push "\n Nombre cuenta (Nick):#{object.user.screen_name}\n"
				


@tweet = Tweet.create({

			#TWEET

			:id_tweet=>object.id,
		
			:mensaje=>object.text ,
			:retweet_contador=>object.retweet_count,
			:fecha=>object.created_at,

		});


aux_tweet = Tweet.find_by_id_tweet(object.id.to_s)
		@hash =[]
		object.hashtags.each do |hastag|
		if Hastag.find_by_etiqueta(hastag.text).nil?

			else if Hastag.find_by_etiqueta(hastag.text).etiqueta.downcase == hastag.text.downcase
				@hashtag = Hastag.find_by_etiqueta(hastag.text)	
			aux_tweet.hastags << @hashtag		
			else end
			end
		end

if Usuario.exists?(:id_usuario => object.user.id.to_s)== true

aux_usuario=Usuario.find_by_id_usuario(object.user.id.to_s)
aux_usuario.tweets << @tweet
			
		else
			if object.user.name.nil?
				aux_name = " "
			else
				aux_name = object.user.name
			end
			if object.user.description.nil?
				aux_description = " "
			else
				aux_description = object.user.description
			end
			@usuario = Usuario.create({
				#USUARIO
				:id_usuario=> object.user.id.to_s,
				:nombre => aux_name ,  
				:nick  => object.user.screen_name ,
				:descripcion => aux_description,
				:contador_seguidores =>object.user.followers_count
			});
			#@usuario.save();
			aux_usuario = Usuario.find_by_id_usuario(object.user.id.to_s)
			aux_usuario.tweets << @tweet
		end

#hsdjhsfdjhfdjhfdfsdgfdgfgj



			end
		end
	end
  end
end

