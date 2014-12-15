class HastagsTweetsController < ApplicationController
  before_action :set_hastags_tweet, only: [:show, :edit, :update, :destroy]

  # GET /hastags_tweets
  # GET /hastags_tweets.json
  def index
    @hastags_tweets = HastagsTweets.all
  end

  # GET /hastags_tweets/1
  # GET /hastags_tweets/1.json
  def show
  end

  # GET /hastags_tweets/new
  def new
    @hastags_tweet = HastagsTweets.new
  end

  # GET /hastags_tweets/1/edit
  def edit
  end

  # POST /hastags_tweets
  # POST /hastags_tweets.json
  def create
    @hastags_tweet = HastagsTweets.new(hastags_tweet_params)

    respond_to do |format|
      if @hastags_tweet.save
        format.html { redirect_to @hastags_tweet, notice: 'Hastags tweets was successfully created.' }
        format.json { render :show, status: :created, location: @hastags_tweet }
      else
        format.html { render :new }
        format.json { render json: @hastags_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hastags_tweets/1
  # PATCH/PUT /hastags_tweets/1.json
  def update
    respond_to do |format|
      if @hastags_tweet.update(hastags_tweet_params)
        format.html { redirect_to @hastags_tweet, notice: 'Hastags tweets was successfully updated.' }
        format.json { render :show, status: :ok, location: @hastags_tweet }
      else
        format.html { render :edit }
        format.json { render json: @hastags_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hastags_tweets/1
  # DELETE /hastags_tweets/1.json
  def destroy
    @hastags_tweet.destroy
    respond_to do |format|
      format.html { redirect_to hastags_tweets_index_url, notice: 'Hastags tweets was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hastags_tweet
      @hastags_tweet = HastagsTweets.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hastags_tweet_params
      params[:hastags_tweet]
    end
end
