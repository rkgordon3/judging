# == Schema Information
#
# Table name: competitors
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  event_id   :integer
#  score      :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Competitor < ActiveRecord::Base

  scope :for_event, lambda { |e| where("event_id = ?", e.id ) }
  
  attr_accessible :event_id, :name, :score
  belongs_to :event

end
