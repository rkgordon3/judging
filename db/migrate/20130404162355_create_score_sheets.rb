class CreateScoreSheets < ActiveRecord::Migration
  def change
    create_table :score_sheets do |t|
      t.integer :event_id
      t.integer :judge_id

      t.timestamps
    end
  end
end
