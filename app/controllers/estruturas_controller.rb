class EstruturasController < ApplicationController
   before_action :authenticate_user!
    layout'dashboard'
  before_action :set_estrutura, only: [:show, :edit, :update, :destroy]

  # GET /estruturas
  # GET /estruturas.json
  def index
    @estruturas = Estrutura.all
  end

  # GET /estruturas/1
  # GET /estruturas/1.json
  def show
  end

  # GET /estruturas/new
  def new
    @estrutura = Estrutura.new
  end

  # GET /estruturas/1/edit
  def edit
  end

  # POST /estruturas
  # POST /estruturas.json
  def create
    @estrutura = Estrutura.new(estrutura_params)

    respond_to do |format|
      if @estrutura.save
        format.html { redirect_to @estrutura, notice: 'Estrutura was successfully created.' }
        format.json { render :show, status: :created, location: @estrutura }
      else
        format.html { render :new }
        format.json { render json: @estrutura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estruturas/1
  # PATCH/PUT /estruturas/1.json
  def update
    respond_to do |format|
      if @estrutura.update(estrutura_params)
        format.html { redirect_to @estrutura, notice: 'Estrutura was successfully updated.' }
        format.json { render :show, status: :ok, location: @estrutura }
      else
        format.html { render :edit }
        format.json { render json: @estrutura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estruturas/1
  # DELETE /estruturas/1.json
  def destroy
    @estrutura.destroy
    respond_to do |format|
      format.html { redirect_to estruturas_url, notice: 'Estrutura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estrutura
      @estrutura = Estrutura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estrutura_params
      params.require(:estrutura).permit(:link, :titulo, :texto,:photo)
    end
end
