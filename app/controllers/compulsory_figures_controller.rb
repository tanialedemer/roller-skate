class CompulsoryFiguresController < ApplicationController
  before_action :set_compulsory_figure, only: [:show, :edit, :update, :destroy]

  # GET /compulsory_figures
  # GET /compulsory_figures.json
  def index
    @compulsory_figures = CompulsoryFigure.all
  end

  # GET /compulsory_figures/1
  # GET /compulsory_figures/1.json
  def show
  end

  # GET /compulsory_figures/new
  def new
    @compulsory_figure = CompulsoryFigure.new
  end

  # GET /compulsory_figures/1/edit
  def edit
  end

  # POST /compulsory_figures
  # POST /compulsory_figures.json
  def create
    @compulsory_figure = CompulsoryFigure.new(compulsory_figure_params)

    respond_to do |format|
      if @compulsory_figure.save
        format.html { redirect_to @compulsory_figure, notice: 'Compulsory figure was successfully created.' }
        format.json { render :show, status: :created, location: @compulsory_figure }
      else
        format.html { render :new }
        format.json { render json: @compulsory_figure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compulsory_figures/1
  # PATCH/PUT /compulsory_figures/1.json
  def update
    respond_to do |format|
      if @compulsory_figure.update(compulsory_figure_params)
        format.html { redirect_to @compulsory_figure, notice: 'Compulsory figure was successfully updated.' }
        format.json { render :show, status: :ok, location: @compulsory_figure }
      else
        format.html { render :edit }
        format.json { render json: @compulsory_figure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compulsory_figures/1
  # DELETE /compulsory_figures/1.json
  def destroy
    @compulsory_figure.destroy
    respond_to do |format|
      format.html { redirect_to compulsory_figures_url, notice: 'Compulsory figure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compulsory_figure
      @compulsory_figure = CompulsoryFigure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compulsory_figure_params
      params.require(:compulsory_figure).permit(:description)
    end
end
