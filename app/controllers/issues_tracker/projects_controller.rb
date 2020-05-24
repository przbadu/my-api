class IssuesTracker::ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]

  # GET /issues_tracker/projects
  def index
    @projects = current_user.projects.page(params[:page])

    render json: @projects,
            meta: pagination_meta(@projects),
            adapter: 'json',
            root: 'data'
  end

  # POST /issues_tracker/projects
  def create
    @project = current_user.projects.new(project_params)
    
    if @project.save
      render json: @project
    else
      render json: { error: @project.errors }, status: :unprocessable_entity
    end
  end

  # GET /issues_tracker/projects/1
  def show
    render json: @project
  end

  # PUT /issues_tracker/projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: { error: @project.errors }, status: :unprocessable_entity
    end
  end

  # DELETE /issues_tracker/projects/1
  def destroy
    @project.destroy
    render json: @project
  end

  private

  def set_project
    @project ||= current_user.projects.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name)
  end
end
