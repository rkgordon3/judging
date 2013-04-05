class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :score
      t.integer :score_sheet_id
      t.integer :question_id

      t.timestamps
    end
  end
end
