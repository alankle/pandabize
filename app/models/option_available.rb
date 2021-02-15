# == Schema Information
#
# Table name: option_availables
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bike_id    :bigint
#  option_id  :bigint
#
# Indexes
#
#  index_option_availables_on_bike_id_and_option_id  (bike_id,option_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (bike_id => bikes.id)
#  fk_rails_...  (option_id => options.id)
#
class OptionAvailable < ApplicationRecord
  has_many :valueAvailables, foreign_key: 'optionAvailable_id'
  has_many :values, through: :valueAvailables

  belongs_to :bike
  belongs_to :option
end
