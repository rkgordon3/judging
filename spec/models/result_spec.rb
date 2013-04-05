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

require 'spec_helper'

describe Result do
  pending "add some examples to (or delete) #{__FILE__}"
end
