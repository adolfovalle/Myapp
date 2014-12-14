class PalabrasTweetsController < ApplicationController
  before_action :set_palabras_tweet, only: [:show, :edit, :update, :destroy]

  # GET /palabras_tweets
  # GET /palabras_tweets.json
  def index
    @palabras_tweets = PalabrasTweets.all
  end

  # GET /palabras_tweets/1
  # GET /palabras_tweets/1.json
  def show
  end

  # GET /palabras_tweets/new
  def new
    @palabras_tweet = PalabrasTweets.new
  end

  # GET /palabras_tweets/1/edit
  def edit
  end

  # POST /palabras_tweets
  # POST /palabras_tweets.json
  def create
    @palabras_tweet = PalabrasTweets.new(palabras_tweet_params)

    respond_to do |format|
      if @palabras_tweet.save
        format.html { redirect_to @palabras_tweet, notice: 'Palabras tweets was successfully created.' }
        format.json { render :show, status: :created, location: @palabras_tweet }
      else
        format.html { render :new }
        format.json { render json: @palabras_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palabras_tweets/1
  # PATCH/PUT /palabras_tweets/1.json
  def update
    respond_to do |format|
      if @palabras_tweet.update(palabras_tweet_params)
        format.html { redirect_to @palabras_tweet, notice: 'Palabras tweets was successfully updated.' }
        format.json { render :show, status: :ok, location: @palabras_tweet }
      else
        format.html { render :edit }
        format.json { render json: @palabras_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palabras_tweets/1
  # DELETE /palabras_tweets/1.json
  def destroy
    @palabras_tweet.destroy
    respond_to do |format|
      format.html { redirect_to palabras_tweets_index_url, notice: 'Palabras tweets was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palabras_tweet
      @palabras_tweet = PalabrasTweets.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palabras_tweet_params
      params[:palabras_tweet]
    end
end
