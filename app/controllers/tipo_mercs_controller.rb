class TipoMercsController < ApplicationController
  before_action :set_tipo_merc, only: [:show, :edit, :update, :destroy]

  # GET /tipo_mercs
  # GET /tipo_mercs.json
  def index
    @tipo_mercs = TipoMerc.all
  end

  # GET /tipo_mercs/1
  # GET /tipo_mercs/1.json
  def show
  end

  # GET /tipo_mercs/new
  def new
    @tipo_merc = TipoMerc.new
  end

  # GET /tipo_mercs/1/edit
  def edit
  end

  # POST /tipo_mercs
  # POST /tipo_mercs.json
  def create
    @tipo_merc = TipoMerc.new(tipo_merc_params)

    respond_to do |format|
      if @tipo_merc.save
        format.html { redirect_to @tipo_merc, notice: 'Tipo merc was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_merc }
      else
        format.html { render :new }
        format.json { render json: @tipo_merc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_mercs/1
  # PATCH/PUT /tipo_mercs/1.json
  def update
    respond_to do |format|
      if @tipo_merc.update(tipo_merc_params)
        format.html { redirect_to @tipo_merc, notice: 'Tipo merc was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_merc }
      else
        format.html { render :edit }
        format.json { render json: @tipo_merc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_mercs/1
  # DELETE /tipo_mercs/1.json
  def destroy
    @tipo_merc.destroy
    respond_to do |format|
      format.html { redirect_to tipo_mercs_url, notice: 'Tipo merc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_merc
      @tipo_merc = TipoMerc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_merc_params
      params.require(:tipo_merc).permit(:descricao)
    end
end
