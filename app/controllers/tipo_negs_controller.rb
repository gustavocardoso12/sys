class TipoNegsController < ApplicationController
  before_action :set_tipo_neg, only: [:show, :edit, :update, :destroy]

  # GET /tipo_negs
  # GET /tipo_negs.json
  def index
    @tipo_negs = TipoNeg.all
  end

  # GET /tipo_negs/1
  # GET /tipo_negs/1.json
  def show
  end

  # GET /tipo_negs/new
  def new
    @tipo_neg = TipoNeg.new
  end

  # GET /tipo_negs/1/edit
  def edit
  end

  # POST /tipo_negs
  # POST /tipo_negs.json
  def create
    @tipo_neg = TipoNeg.new(tipo_neg_params)

    respond_to do |format|
      if @tipo_neg.save
        format.html { redirect_to @tipo_neg, notice: 'Tipo neg was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_neg }
      else
        format.html { render :new }
        format.json { render json: @tipo_neg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_negs/1
  # PATCH/PUT /tipo_negs/1.json
  def update
    respond_to do |format|
      if @tipo_neg.update(tipo_neg_params)
        format.html { redirect_to @tipo_neg, notice: 'Tipo neg was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_neg }
      else
        format.html { render :edit }
        format.json { render json: @tipo_neg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_negs/1
  # DELETE /tipo_negs/1.json
  def destroy
    @tipo_neg.destroy
    respond_to do |format|
      format.html { redirect_to tipo_negs_url, notice: 'Tipo neg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_neg
      @tipo_neg = TipoNeg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_neg_params
      params.require(:tipo_neg).permit(:descricao)
    end
end
