class AddLabelsCountToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :labels_count, :integer
  end
end
