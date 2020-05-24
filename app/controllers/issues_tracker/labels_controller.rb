class IssuesTracker::LabelsController < ApplicationController
  before_action :set_project, only: [:index, :show, :create, :update, :destroy]
  before_action :set_label, only: [:show, :update, :destroy]

  # GET /issues_tracker/labels
  def index
    @labels = @project.labels.page(params[:page])

    render json: @labels,
            meta: pagination_meta(@labels),
            adapter: 'json',
            root: 'data'
  end

  # POST /issues_tracker/labels
  def create
    @label = @project.labels.new(label_params)
    
    if @label.save
      render json: @label
    else
      render json: { error: @label.errors }, status: :unprocessable_entity
    end
  end

  # GET /issues_tracker/labels/1
  def show
    render json: @label
  end

  # PUT /issues_tracker/labels/1
  def update
    if @label.update(label_params)
      render json: @label
    else
      render json: { error: @label.errors }, status: :unprocessable_entity
    end
  end

  # DELETE /issues_tracker/labels/1
  def destroy
    @label.destroy
    render json: @label
  end

  private

  def set_project
    @project ||= current_user.projects.find(params[:project_id])
  end

  def set_label
    @label ||= @project.labels.find(params[:id])
  end

  def label_params
    params.require(:label).permit(:name, :description, :color)
  end
end
