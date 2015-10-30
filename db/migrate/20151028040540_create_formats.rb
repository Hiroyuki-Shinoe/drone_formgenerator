class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.integer :type_id
      t.string :type1_year
      t.string :type1_month
      t.string :type1_date
      t.string :to_whom
      t.string :type1_name
      t.string :address
      t.string :purpose_01
      t.string :purpose_02
      t.string :purpose_03
      t.string :purpose_04
      t.string :purpose_05
      t.string :purpose_06
      t.string :purpose_07
      t.string :purpose_08
      t.string :purpose_09
      t.string :purpose_10
      t.string :purpose_11
      t.string :purpose_12
      t.text :date_time
      t.text :route
      t.text :altitude
      t.text :characteristic_of_drone
      t.text :which_of_exclusion_zone_1
      t.text :which_of_exclusion_zone_2
      t.text :which_of_exclusion_zone_3
      t.text :reason_for_exclusion_zone
      t.string :which_of_prohibited_manner_1
      t.string :which_of_prohibited_manner_2
      t.string :which_of_prohibited_manner_3
      t.string :which_of_prohibited_manner_4
      t.string :which_of_prohibited_manner_5
      t.string :which_of_prohibited_manner_6
      t.text :reason_for_prohibited_manner
      t.text :function_performance_of_drone
      t.text :experience_skill_of_pilot
      t.text :measure_for_safety
      t.text :others
      t.text :maker_of_drone
      t.text :model_of_drone
      t.text :serial_number
      t.text :maximum_takeoff_weight
    end
  end
end
