class CreateInterviews < ActiveRecord::Migration[6.1]
  def change
    create_table :interviews do |t|
      t.integer :id
      t.references :seeker, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.datetime :interview_date

      t.timestamps
    end
  end
end
