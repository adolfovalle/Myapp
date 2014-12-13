class HastagsController < ApplicationController
  before_action :set_hastag, only: [:show, :edit, :update, :destroy]

  # GET /hastags
  # GET /hastags.json
  def index
    @hastags = Hastag.all
  end

  # GET /hastags/1
  # GET /hastags/1.json
  def show
  end

  # GET /hastags/new
  def new
    @hastag = Hastag.new
  end

  # GET /hastags/1/edit
  def edit
  end

  # POST /hastags
  # POST /hastags.json
  def create
    @hastag = Hastag.new(hastag_params)

    respond_to do |format|
      if @hastag.save
        format.html { redirect_to @hastag, notice: 'Hastag was successfully created.' }
        format.json { render :show, status: :created, location: @hastag }
      else
        format.html { render :new }
        format.json { render json: @hastag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hastags/1
  # PATCH/PUT /hastags/1.json
  def update
    respond_to do |format|
      if @hastag.update(hastag_params)
        format.html { redirect_to @hastag, notice: 'Hastag was successfully updated.' }
        format.json { render :show, status: :ok, location: @hastag }
      else
        format.html { render :edit }
        format.json { render json: @hastag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hastags/1
  # DELETE /hastags/1.json
  def destroy
    @hastag.destroy
    respond_to do |format|
      format.html { redirect_to hastags_url, notice: 'Hastag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hastag
      @hastag = Hastag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hastag_params
      params.require(:hastag).permit(:id_hastag, :etiqueta, :intencion)
    end
end
