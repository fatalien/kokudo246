class AutoartsController < ApplicationController
  before_action :set_autoart, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  # GET /autoarts
  # GET /autoarts.json
  def index
    @autoarts = Autoart.all
  end

  # GET /autoarts/1
  # GET /autoarts/1.json
  def show
  end

  # GET /autoarts/new
  def new
    @autoart = Autoart.new
  end

  # GET /autoarts/1/edit
  def edit
  end

  # POST /autoarts
  # POST /autoarts.json
  def create
    @autoart = Autoart.new(autoart_params)
    @autoart.user_id = current_user.id
    respond_to do |format|
      if @autoart.save
        format.html { redirect_to @autoart, notice: 'Autoart was successfully created.' }
        format.json { render :show, status: :created, location: @autoart }
      else
        format.html { render :new }
        format.json { render json: @autoart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autoarts/1
  # PATCH/PUT /autoarts/1.json
  def update
    respond_to do |format|
      if @autoart.update(autoart_params)
        format.html { redirect_to @autoart, notice: 'Autoart was successfully updated.' }
        format.json { render :show, status: :ok, location: @autoart }
      else
        format.html { render :edit }
        format.json { render json: @autoart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autoarts/1
  # DELETE /autoarts/1.json
  def destroy
    @autoart.destroy
    respond_to do |format|
      format.html { redirect_to autoarts_url, notice: 'Autoart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autoart
      @autoart = Autoart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autoart_params
      params.require(:autoart).permit(:title, :description, :image)
    end
end
