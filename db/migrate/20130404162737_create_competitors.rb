class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :name
      t.integer :event_id
      t.integer :score

      t.timestamps
    end
  end
end
