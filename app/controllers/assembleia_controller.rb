class AssembleiaController < ApplicationController
  before_action :set_assembleium, only: [:show, :edit, :update, :destroy]

  # GET /assembleia
  # GET /assembleia.json
  def index
    @assembleia = Assembleium.all
  end

  # GET /assembleia/1
  # GET /assembleia/1.json
  def show
  end

  # GET /assembleia/new
  def new
    @assembleium = Assembleium.new
  end

  # GET /assembleia/1/edit
  def edit
  end

  # POST /assembleia
  # POST /assembleia.json
  def create
    @assembleium = Assembleium.new(assembleium_params)

    respond_to do |format|
      if @assembleium.save
        format.html { redirect_to @assembleium, notice: 'Assembleium was successfully created.' }
        format.json { render :show, status: :created, location: @assembleium }
      else
        format.html { render :new }
        format.json { render json: @assembleium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assembleia/1
  # PATCH/PUT /assembleia/1.json
  def update
    respond_to do |format|
      if @assembleium.update(assembleium_params)
        format.html { redirect_to @assembleium, notice: 'Assembleium was successfully updated.' }
        format.json { render :show, status: :ok, location: @assembleium }
      else
        format.html { render :edit }
        format.json { render json: @assembleium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assembleia/1
  # DELETE /assembleia/1.json
  def destroy
    @assembleium.destroy
    respond_to do |format|
      format.html { redirect_to assembleia_url, notice: 'Assembleium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assembleium
      @assembleium = Assembleium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assembleium_params
      params.require(:assembleium).permit(:Distrito, :Municipio, :nome_presidente, :email, :telefone, :aderiu, :data, :votacao, :observacoes)
    end
end
