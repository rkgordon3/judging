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

require 'spec_helper'

describe Competitor do
  pending "add some examples to (or delete) #{__FILE__}"
end
