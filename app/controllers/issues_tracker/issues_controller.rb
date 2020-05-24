class IssuesTracker::IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :update, :destroy]

  # GET /issues_tracker/issues
  def index
    @issues = issues.page(params[:page])

    render json: @issues,
            meta: pagination_meta(@issues),
            adapter: 'json',
            root: 'data'
  end

  # POST /issues_tracker/issues
  def create
    @issue = issues.new(issue_params)
    
    if @issue.save
      render json: @issue, serializer: IssuesTracker::IssueDetailsSerializer
    else
      render json: { error: @issue.errors }, status: :unprocessable_entity
    end
  end

  # GET /issues_tracker/issues/1
  def show
    render json: @issue, serializer: IssuesTracker::IssueDetailsSerializer
  end

  # PUT /issues_tracker/issues/1
  def update
    if @issue.update(issue_params)
      render json: @issue, serializer: IssuesTracker::IssueDetailsSerializer
    else
      render json: { error: @issue.errors }, status: :unprocessable_entity
    end
  end

  # DELETE /issues_tracker/issues/1
  def destroy
    @issue.destroy
    render json: @issue, serializer: IssuesTracker::IssueDetailsSerializer
  end

  private

  def issues
    @issues ||= current_user.created_issues
  end

  def set_issue
    @issue ||= issues.find(params[:id])
  end

  def issue_params
    params.require(:issue).permit(
      :title, :description, :closed, :project_id,
      assignees_attributes: [:id, :user_id, :issue_id, :_destroy],
      issue_labels_attributes: [:id, :label_id, :issue_id, :_destroy]
    )
  end
end
