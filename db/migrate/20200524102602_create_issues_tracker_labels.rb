class CreateIssuesTrackerLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :issues_tracker_labels do |t|
      t.string :name
      t.string :description
      t.string :color
      t.integer :project_id, index: true

      t.timestamps
    end
  end
end
