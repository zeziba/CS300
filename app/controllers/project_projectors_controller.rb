class ProjectProjectorsController < ApplicationController
  before_action :set_project_projector, only: %i[ show edit update destroy ]

  # GET /project_projectors or /project_projectors.json
  def index
    @project_projectors = ProjectProjector.all
  end

  # GET /project_projectors/1 or /project_projectors/1.json
  def show
  end

  # GET /project_projectors/new
  def new
    @project_projector = ProjectProjector.new
  end

  # GET /project_projectors/1/edit
  def edit
  end

  # POST /project_projectors or /project_projectors.json
  def create
    @project_projector = ProjectProjector.new(project_projector_params)

    respond_to do |format|
      if @project_projector.save
        format.html { redirect_to @project_projector, notice: "Project projector was successfully created." }
        format.json { render :show, status: :created, location: @project_projector }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_projector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_projectors/1 or /project_projectors/1.json
  def update
    respond_to do |format|
      if @project_projector.update(project_projector_params)
        format.html { redirect_to @project_projector, notice: "Project projector was successfully updated." }
        format.json { render :show, status: :ok, location: @project_projector }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_projector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_projectors/1 or /project_projectors/1.json
  def destroy
    @project_projector.destroy
    respond_to do |format|
      format.html { redirect_to project_projectors_url, notice: "Project projector was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_projector
      @project_projector = ProjectProjector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_projector_params
      params.fetch(:project_projector, {})
    end
end
