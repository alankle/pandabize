# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ValueAvailable.destroy_all
OptionAvailable.destroy_all
Bike.destroy_all
Option.destroy_all
Value.destroy_all

bike1 = Bike.create(description: 'Super Bike')

bike1_option1 = Option.create(description: 'Wheel-Size')
bike1_option1_value1 = Value.create(description: '15')
bike1_option1_value2 = Value.create(description: '17')
bike1_option1_value3 = Value.create(description: '19')

bike1_option2 = Option.create(description: 'Rim-Color')
bike1_option2_value1 = Value.create(description: 'Red')
bike1_option2_value2 = Value.create(description: 'Green')
bike1_option2_value3 = Value.create(description: 'Dotted')

bike1_optionavailable1 = OptionAvailable.create(bike_id: bike1.id, option_id: bike1_option1.id)
bike1_optionavailable1_valueavailable1 = ValueAvailable.create(optionAvailable_id: bike1_optionavailable1.id, value_id: bike1_option1_value1.id)
bike1_optionavailable1_valueavailable2 = ValueAvailable.create(optionAvailable_id: bike1_optionavailable1.id, value_id: bike1_option1_value3.id)

bike1_optionavailable2 = OptionAvailable.create(bike_id: bike1.id, option_id: bike1_option2.id)
bike1_optionavailable2_valueavailable1 = ValueAvailable.create(optionAvailable_id: bike1_optionavailable2.id, value_id: bike1_option2_value2.id)
bike1_optionavailable2_valueavailable2 = ValueAvailable.create(optionAvailable_id: bike1_optionavailable2.id, value_id: bike1_option2_value3.id)
