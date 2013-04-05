# == Schema Information
#
# Table name: questions
#
#  id         :integer         not null, primary key
#  text       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Question < ActiveRecord::Base
  attr_accessible :text
end
