# == Schema Information
#
# Table name: results
#
#  id             :integer         not null, primary key
#  question_id    :integer
#  score          :integer
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  score_sheet_id :integer
#

class Result < ActiveRecord::Base
  attr_accessible :question_id, :score, :score_sheet
  belongs_to :score_sheet
  belongs_to :question
end
