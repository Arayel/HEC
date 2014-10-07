class LineUpBoomsController < ApplicationController
  before_action :set_line_up_boom, only: [:show, :edit, :update, :destroy]

  # GET /line_up_booms
  # GET /line_up_booms.json
  def index
    @line_up_booms = LineUpBoom.all
  end

  # GET /line_up_booms/1
  # GET /line_up_booms/1.json
  def show
  end

  # GET /line_up_booms/new
  def new
    @line_up_boom = LineUpBoom.new
  end

  # GET /line_up_booms/1/edit
  def edit
  end

  # POST /line_up_booms
  # POST /line_up_booms.json
  def create
    @line_up_boom = LineUpBoom.new(line_up_boom_params)

    respond_to do |format|
      if @line_up_boom.save
        format.html { redirect_to @line_up_boom, notice: 'Line up boom was successfully created.' }
        format.json { render :show, status: :created, location: @line_up_boom }
      else
        format.html { render :new }
        format.json { render json: @line_up_boom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_up_booms/1
  # PATCH/PUT /line_up_booms/1.json
  def update
    respond_to do |format|
      if @line_up_boom.update(line_up_boom_params)
        format.html { redirect_to @line_up_boom, notice: 'Line up boom was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_up_boom }
      else
        format.html { render :edit }
        format.json { render json: @line_up_boom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_up_booms/1
  # DELETE /line_up_booms/1.json
  def destroy
    @line_up_boom.destroy
    respond_to do |format|
      format.html { redirect_to line_up_booms_url, notice: 'Line up boom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_up_boom
      @line_up_boom = LineUpBoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_up_boom_params
      params.require(:line_up_boom).permit(:DjName, :SetTime, :MusicStyle)
    end
end
