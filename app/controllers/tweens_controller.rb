class TweensController < ApplicationController
  before_action :set_tween, only: [:show, :edit, :update, :destroy]

  # GET /tweens
  # GET /tweens.json
  def index
    @tweens = Tween.all
  end

  # GET /tweens/1
  # GET /tweens/1.json
  def show
  end

  # GET /tweens/new
  def new
    @tween = Tween.new
  end

  # GET /tweens/1/edit
  def edit
  end

  # POST /tweens
  # POST /tweens.json
  def create
    @tween = Tween.new(tween_params)

    respond_to do |format|
      if @tween.save
        format.html { redirect_to @tween, notice: 'Tween was successfully created.' }
        format.json { render :show, status: :created, location: @tween }
      else
        format.html { render :new }
        format.json { render json: @tween.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweens/1
  # PATCH/PUT /tweens/1.json
  def update
    respond_to do |format|
      if @tween.update(tween_params)
        format.html { redirect_to @tween, notice: 'Tween was successfully updated.' }
        format.json { render :show, status: :ok, location: @tween }
      else
        format.html { render :edit }
        format.json { render json: @tween.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweens/1
  # DELETE /tweens/1.json
  def destroy
    @tween.destroy
    respond_to do |format|
      format.html { redirect_to tweens_url, notice: 'Tween was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tween
      @tween = Tween.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tween_params
      params.require(:tween).permit(:status, :user_id)
    end
end
