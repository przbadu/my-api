class CreateIssuesTrackerIssueLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :issues_tracker_issue_labels do |t|
      t.integer :label_id
      t.integer :issue_id

      t.timestamps
    end
    add_index :issues_tracker_issue_labels, :label_id
    add_index :issues_tracker_issue_labels, :issue_id
  end
end
