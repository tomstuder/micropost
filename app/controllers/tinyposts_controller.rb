class TinypostsController < ApplicationController
  before_action :set_tinypost, only: [:show, :edit, :update, :destroy]

  # GET /tinyposts
  # GET /tinyposts.json
  def index
    @tinyposts = Tinypost.all
  end

  # GET /tinyposts/1
  # GET /tinyposts/1.json
  def show
  end

  # GET /tinyposts/new
  def new
    @tinypost = Tinypost.new
  end

  # GET /tinyposts/1/edit
  def edit
  end

  # POST /tinyposts
  # POST /tinyposts.json
  def create
    @tinypost = Tinypost.new(tinypost_params)

    respond_to do |format|
      if @tinypost.save
        format.html { redirect_to @tinypost, notice: 'Tinypost was successfully created.' }
        format.json { render :show, status: :created, location: @tinypost }
      else
        format.html { render :new }
        format.json { render json: @tinypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tinyposts/1
  # PATCH/PUT /tinyposts/1.json
  def update
    respond_to do |format|
      if @tinypost.update(tinypost_params)
        format.html { redirect_to @tinypost, notice: 'Tinypost was successfully updated.' }
        format.json { render :show, status: :ok, location: @tinypost }
      else
        format.html { render :edit }
        format.json { render json: @tinypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tinyposts/1
  # DELETE /tinyposts/1.json
  def destroy
    @tinypost.destroy
    respond_to do |format|
      format.html { redirect_to tinyposts_url, notice: 'Tinypost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tinypost
      @tinypost = Tinypost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tinypost_params
      params.require(:tinypost).permit(:content, :user_id)
    end
end
