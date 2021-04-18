class RootusersController < ApplicationController
  before_action :set_rootuser, only: %i[ show edit update destroy ]

  # GET /rootusers or /rootusers.json
  def index
    @rootusers = Rootuser.all
  end

  # GET /rootusers/1 or /rootusers/1.json
  def show
  end

  # GET /rootusers/new
  def new
    @rootuser = Rootuser.new
  end

  # GET /rootusers/1/edit
  def edit
  end

  # POST /rootusers or /rootusers.json
  def create
    @rootuser = Rootuser.new(rootuser_params)

    respond_to do |format|
      if @rootuser.save
        format.html { redirect_to @rootuser, notice: "Rootuser was successfully created." }
        format.json { render :show, status: :created, location: @rootuser }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rootuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rootusers/1 or /rootusers/1.json
  def update
    respond_to do |format|
      if @rootuser.update(rootuser_params)
        format.html { redirect_to @rootuser, notice: "Rootuser was successfully updated." }
        format.json { render :show, status: :ok, location: @rootuser }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rootuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rootusers/1 or /rootusers/1.json
  def destroy
    @rootuser.destroy
    respond_to do |format|
      format.html { redirect_to rootusers_url, notice: "Rootuser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rootuser
      @rootuser = Rootuser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rootuser_params
      params.fetch(:rootuser, {})
    end
end
