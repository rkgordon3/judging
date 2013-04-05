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

require 'spec_helper'

describe ScoreSheet do
  pending "add some examples to (or delete) #{__FILE__}"
end
