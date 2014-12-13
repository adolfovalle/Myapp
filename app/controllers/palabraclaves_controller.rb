class PalabraclavesController < ApplicationController
  before_action :set_palabraclafe, only: [:show, :edit, :update, :destroy]

  # GET /palabraclaves
  # GET /palabraclaves.json
  def index
    @palabraclaves = Palabraclave.all
  end

  # GET /palabraclaves/1
  # GET /palabraclaves/1.json
  def show
  end

  # GET /palabraclaves/new
  def new
    @palabraclafe = Palabraclave.new
  end

  # GET /palabraclaves/1/edit
  def edit
  end

  # POST /palabraclaves
  # POST /palabraclaves.json
  def create
    @palabraclafe = Palabraclave.new(palabraclafe_params)

    respond_to do |format|
      if @palabraclafe.save
        format.html { redirect_to @palabraclafe, notice: 'Palabraclave was successfully created.' }
        format.json { render :show, status: :created, location: @palabraclafe }
      else
        format.html { render :new }
        format.json { render json: @palabraclafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palabraclaves/1
  # PATCH/PUT /palabraclaves/1.json
  def update
    respond_to do |format|
      if @palabraclafe.update(palabraclafe_params)
        format.html { redirect_to @palabraclafe, notice: 'Palabraclave was successfully updated.' }
        format.json { render :show, status: :ok, location: @palabraclafe }
      else
        format.html { render :edit }
        format.json { render json: @palabraclafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palabraclaves/1
  # DELETE /palabraclaves/1.json
  def destroy
    @palabraclafe.destroy
    respond_to do |format|
      format.html { redirect_to palabraclaves_url, notice: 'Palabraclave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palabraclafe
      @palabraclafe = Palabraclave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palabraclafe_params
      params.require(:palabraclafe).permit(:id_palabra, :id_tweet_palabra, :palabra_tweet, :intencion)
    end
end
