class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :question_id
      t.integer :score

      t.timestamps
    end
  end
end
