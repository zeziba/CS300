class AccesslevelsController < ApplicationController
  before_action :set_accesslevel, only: %i[ show edit update destroy ]

  # GET /accesslevels or /accesslevels.json
  def index
    @accesslevels = Accesslevel.all
  end

  # GET /accesslevels/1 or /accesslevels/1.json
  def show
  end

  # GET /accesslevels/new
  def new
    @accesslevel = Accesslevel.new
  end

  # GET /accesslevels/1/edit
  def edit
  end

  # POST /accesslevels or /accesslevels.json
  def create
    @accesslevel = Accesslevel.new(accesslevel_params)

    respond_to do |format|
      if @accesslevel.save
        format.html { redirect_to @accesslevel, notice: "Access level was successfully created." }
        format.json { render :show, status: :created, location: @accesslevel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @accesslevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accesslevels/1 or /accesslevels/1.json
  def update
    respond_to do |format|
      if @accesslevel.update(accesslevel_params)
        format.html { redirect_to @accesslevel, notice: "Access level was successfully updated." }
        format.json { render :show, status: :ok, location: @accesslevel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @accesslevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accesslevels/1 or /accesslevels/1.json
  def destroy
    @accesslevel.destroy
    respond_to do |format|
      format.html { redirect_to accesslevels_url, notice: "Access level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accesslevel
      @accesslevel = Accesslevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accesslevel_params
      params.require(:accesslevel).permit(:accesslevelid)
    end
end
