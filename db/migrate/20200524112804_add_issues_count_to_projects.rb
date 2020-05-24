class AddIssuesCountToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :issues_count, :integer
  end
end
