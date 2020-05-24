class CreateIssuesTrackerIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues_tracker_issues do |t|
      t.string :title
      t.text :description
      t.integer :creator_id
      t.integer :project_id
      t.boolean :closed, null: false, default: false

      t.timestamps
    end
    add_index :issues_tracker_issues, :creator_id
    add_index :issues_tracker_issues, :project_id
  end
end
