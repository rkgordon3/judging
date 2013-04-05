# == Schema Information
#
# Table name: judges
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  event_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Judge < ActiveRecord::Base
  attr_accessible :event_id, :name
  has_many :score_sheets
  belongs_to :event
end
