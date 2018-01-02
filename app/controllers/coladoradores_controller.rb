class ColadoradoresController < ApplicationController
   before_action :authenticate_user!
    layout'dashboard'
  before_action :set_coladoradore, only: [:show, :edit, :update, :destroy]

  # GET /coladoradores
  # GET /coladoradores.json
  def index
    @coladoradores = Coladoradore.all
  end

  # GET /coladoradores/1
  # GET /coladoradores/1.json
  def show
  end

  # GET /coladoradores/new
  def new
    @coladoradore = Coladoradore.new
  end

  # GET /coladoradores/1/edit
  def edit
  end

  # POST /coladoradores
  # POST /coladoradores.json
  def create
    @coladoradore = Coladoradore.new(coladoradore_params)

    respond_to do |format|
      if @coladoradore.save
        format.html { redirect_to @coladoradore, notice: 'Coladoradore was successfully created.' }
        format.json { render :show, status: :created, location: @coladoradore }
      else
        format.html { render :new }
        format.json { render json: @coladoradore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coladoradores/1
  # PATCH/PUT /coladoradores/1.json
  def update
    respond_to do |format|
      if @coladoradore.update(coladoradore_params)
        format.html { redirect_to @coladoradore, notice: 'Coladoradore was successfully updated.' }
        format.json { render :show, status: :ok, location: @coladoradore }
      else
        format.html { render :edit }
        format.json { render json: @coladoradore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coladoradores/1
  # DELETE /coladoradores/1.json
  def destroy
    @coladoradore.destroy
    respond_to do |format|
      format.html { redirect_to coladoradores_url, notice: 'Coladoradore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coladoradore
      @coladoradore = Coladoradore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coladoradore_params
      params.require(:coladoradore).permit(:nome, :cargo)
    end
end
