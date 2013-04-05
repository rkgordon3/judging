class AddScoreSheetIdToResult < ActiveRecord::Migration
  def change
    add_column :results, :score_sheet_id, :integer
  end
end
