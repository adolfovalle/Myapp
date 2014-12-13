class TweetsHastagsController < ApplicationController
  before_action :set_tweets_hastag, only: [:show, :edit, :update, :destroy]

  # GET /tweets_hastags
  # GET /tweets_hastags.json
  def index
    @tweets_hastags = TweetsHastags.all
  end

  # GET /tweets_hastags/1
  # GET /tweets_hastags/1.json
  def show
  end

  # GET /tweets_hastags/new
  def new
    @tweets_hastag = TweetsHastags.new
  end

  # GET /tweets_hastags/1/edit
  def edit
  end

  # POST /tweets_hastags
  # POST /tweets_hastags.json
  def create
    @tweets_hastag = TweetsHastags.new(tweets_hastag_params)

    respond_to do |format|
      if @tweets_hastag.save
        format.html { redirect_to @tweets_hastag, notice: 'Tweets hastags was successfully created.' }
        format.json { render :show, status: :created, location: @tweets_hastag }
      else
        format.html { render :new }
        format.json { render json: @tweets_hastag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweets_hastags/1
  # PATCH/PUT /tweets_hastags/1.json
  def update
    respond_to do |format|
      if @tweets_hastag.update(tweets_hastag_params)
        format.html { redirect_to @tweets_hastag, notice: 'Tweets hastags was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweets_hastag }
      else
        format.html { render :edit }
        format.json { render json: @tweets_hastag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets_hastags/1
  # DELETE /tweets_hastags/1.json
  def destroy
    @tweets_hastag.destroy
    respond_to do |format|
      format.html { redirect_to tweets_hastags_index_url, notice: 'Tweets hastags was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweets_hastag
      @tweets_hastag = TweetsHastags.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweets_hastag_params
      params.require(:tweets_hastag).permit(:id_tweet, :id_hastag)
    end
end
