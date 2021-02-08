# == Schema Information
#
# Table name: line_orders
#
#  id         :bigint           not null, primary key
#  gty        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bike_id    :bigint
#  option_id  :bigint
#  value_id   :bigint
#
# Indexes
#
#  index_line_orders_on_bike_id_and_option_id_and_value_id  (bike_id,option_id,value_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (bike_id => bikes.id)
#  fk_rails_...  (option_id => options.id)
#  fk_rails_...  (value_id => "values".id)
#
class LineOrder < ApplicationRecord
end
