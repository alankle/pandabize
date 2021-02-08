# == Schema Information
#
# Table name: value_availables
#
#  id                 :bigint           not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  optionAvailable_id :bigint
#  value_id           :bigint
#
# Indexes
#
#  index_value_availables_on_optionAvailable_id_and_value_id  (optionAvailable_id,value_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (optionAvailable_id => option_availables.id)
#  fk_rails_...  (value_id => "values".id)
#
require 'test_helper'

class ValueAvailableTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
