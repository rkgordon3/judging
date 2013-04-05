# == Schema Information
#
# Table name: score_sheets
#
#  id            :integer         not null, primary key
#  event_id      :integer
#  judge_id      :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  competitor_id :integer
#


class ScoreSheet < ActiveRecord::Base

  scope :current, lambda  { |event_id, judge_id, competitor_id|
  	where("event_id = :event_id and judge_id = :judge_id and competitor_id = :competitor_id",
  		{ event_id: event_id, judge_id: judge_id, competitor_id: competitor_id })
  }
  attr_accessible :event_id, :judge_id, :competitor_id
  has_many :results
  belongs_to :judge
  belongs_to :event
  belongs_to :competitor
end
