class AddIssuesCountToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :issues_tracker_projects, :issues_count, :integer, null: false, default: 0
  end
end
