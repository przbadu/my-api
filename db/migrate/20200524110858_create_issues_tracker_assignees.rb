class CreateIssuesTrackerAssignees < ActiveRecord::Migration[6.0]
  def change
    create_table :issues_tracker_assignees do |t|
      t.integer :user_id
      t.integer :issue_id

      t.timestamps
    end
    add_index :issues_tracker_assignees, :user_id
    add_index :issues_tracker_assignees, :issue_id
  end
end
