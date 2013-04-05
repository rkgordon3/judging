class Evaluation < ActiveRecord::Base
  attr_accessible :question_id, :score, :score_sheet_id
end
