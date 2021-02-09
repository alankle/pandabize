# == Schema Information
#
# Table name: bikes
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Bike < ApplicationRecord
  has_many :optionAvailables
  has_many :options, through: :optionAvailables

 
end
