class TweetsPalabrasController < ApplicationController
  before_action :set_tweets_palabra, only: [:show, :edit, :update, :destroy]

  # GET /tweets_palabras
  # GET /tweets_palabras.json
  def index
    @tweets_palabras = TweetsPalabras.all
  end

  # GET /tweets_palabras/1
  # GET /tweets_palabras/1.json
  def show
  end

  # GET /tweets_palabras/new
  def new
    @tweets_palabra = TweetsPalabras.new
  end

  # GET /tweets_palabras/1/edit
  def edit
  end

  # POST /tweets_palabras
  # POST /tweets_palabras.json
  def create
    @tweets_palabra = TweetsPalabras.new(tweets_palabra_params)

    respond_to do |format|
      if @tweets_palabra.save
        format.html { redirect_to @tweets_palabra, notice: 'Tweets palabras was successfully created.' }
        format.json { render :show, status: :created, location: @tweets_palabra }
      else
        format.html { render :new }
        format.json { render json: @tweets_palabra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweets_palabras/1
  # PATCH/PUT /tweets_palabras/1.json
  def update
    respond_to do |format|
      if @tweets_palabra.update(tweets_palabra_params)
        format.html { redirect_to @tweets_palabra, notice: 'Tweets palabras was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweets_palabra }
      else
        format.html { render :edit }
        format.json { render json: @tweets_palabra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets_palabras/1
  # DELETE /tweets_palabras/1.json
  def destroy
    @tweets_palabra.destroy
    respond_to do |format|
      format.html { redirect_to tweets_palabras_index_url, notice: 'Tweets palabras was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweets_palabra
      @tweets_palabra = TweetsPalabras.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweets_palabra_params
      params[:tweets_palabra]
    end
end
