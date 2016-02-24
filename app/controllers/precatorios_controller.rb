class PrecatoriosController < ApplicationController
  before_action :set_precatorio, only: [:show, :edit, :update, :destroy]

  # GET /precatorios
  # GET /precatorios.json
  def index
    @precatorios = Precatorio.all
  end

  # GET /precatorios/1
  # GET /precatorios/1.json
  def show
  end

  # GET /precatorios/new
  def new
    @precatorio = Precatorio.new
  end

  # GET /precatorios/1/edit
  def edit
  end

  # POST /precatorios
  # POST /precatorios.json
  def create
    @precatorio = Precatorio.new(precatorio_params)

    respond_to do |format|
      if @precatorio.save
        format.html { redirect_to @precatorio, notice: 'Precatorio was successfully created.' }
        format.json { render :show, status: :created, location: @precatorio }
      else
        format.html { render :new }
        format.json { render json: @precatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precatorios/1
  # PATCH/PUT /precatorios/1.json
  def update
    respond_to do |format|
      if @precatorio.update(precatorio_params)
        format.html { redirect_to @precatorio, notice: 'Precatorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @precatorio }
      else
        format.html { render :edit }
        format.json { render json: @precatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precatorios/1
  # DELETE /precatorios/1.json
  def destroy
    @precatorio.destroy
    respond_to do |format|
      format.html { redirect_to precatorios_url, notice: 'Precatorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precatorio
      @precatorio = Precatorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def precatorio_params
      params.fetch(:precatorio, {})
    end
end
