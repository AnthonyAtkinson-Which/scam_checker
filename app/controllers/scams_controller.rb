class ScamsController < ApplicationController
  before_action :set_scam, only: [:show, :edit, :update, :destroy]

  # GET /scams
  # GET /scams.json
  def index
    @scams = Scam.all
  end

  # GET /scams/1
  # GET /scams/1.json
  def show
  end

  # GET /scams/new
  def new
    @scam = Scam.new
  end

  # GET /scams/1/edit
  def edit
  end

  # POST /scams
  # POST /scams.json
  def create
    @scam = Scam.new(scam_params)

    @scam.result = SCAM_CHECKER.classify scam_params.values.join(' ')
    # @scam.result = SCAM_CHECKER.classify_with_score scam_params.values.join(' ')

    respond_to do |format|
      if @scam.save
        format.html { redirect_to @scam, notice: 'Analysis complete' }
        format.json { render :show, status: :created, location: @scam }
      else
        format.html { render :new }
        format.json { render json: @scam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scams/1
  # PATCH/PUT /scams/1.json
  def update
    @scam.result = SCAM_CHECKER.classify scam_params.values.join(' ')

    respond_to do |format|
      if @scam.update(scam_params)
        format.html { redirect_to @scam, notice: 'Scam was successfully updated.' }
        format.json { render :show, status: :ok, location: @scam }
      else
        format.html { render :edit }
        format.json { render json: @scam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scams/1
  # DELETE /scams/1.json
  def destroy
    @scam.destroy
    respond_to do |format|
      format.html { redirect_to scams_url, notice: 'Scam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scam
      @scam = Scam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scam_params
      params.require(:scam).permit(:title, :sender, :messsage, :result)
    end
end
