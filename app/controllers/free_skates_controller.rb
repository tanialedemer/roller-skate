class FreeSkatesController < ApplicationController
  before_action :set_free_skate, only: [:show, :edit, :update, :destroy]

  # GET /free_skates
  # GET /free_skates.json
  def index
    @free_skates = FreeSkate.all
  end

  # GET /free_skates/1
  # GET /free_skates/1.json
  def show
  end

  # GET /free_skates/new
  def new
    @free_skate = FreeSkate.new
  end

  # GET /free_skates/1/edit
  def edit
  end

  # POST /free_skates
  # POST /free_skates.json
  def create
    @free_skate = FreeSkate.new(free_skate_params)

    respond_to do |format|
      if @free_skate.save
        format.html { redirect_to @free_skate, notice: 'Free skate was successfully created.' }
        format.json { render :show, status: :created, location: @free_skate }
      else
        format.html { render :new }
        format.json { render json: @free_skate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /free_skates/1
  # PATCH/PUT /free_skates/1.json
  def update
    respond_to do |format|
      if @free_skate.update(free_skate_params)
        format.html { redirect_to @free_skate, notice: 'Free skate was successfully updated.' }
        format.json { render :show, status: :ok, location: @free_skate }
      else
        format.html { render :edit }
        format.json { render json: @free_skate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /free_skates/1
  # DELETE /free_skates/1.json
  def destroy
    @free_skate.destroy
    respond_to do |format|
      format.html { redirect_to free_skates_url, notice: 'Free skate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_free_skate
      @free_skate = FreeSkate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def free_skate_params
      params.require(:free_skate).permit(:description)
    end
end
