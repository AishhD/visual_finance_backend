class CreateSavingTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :saving_types do |t|
      t.string :spending_category
      t.integer :food_non_alcholic_drinks
      t.integer :alcoholic_drinks_tobacco_narcotics
      t.integer :clothing_footwear
      t.integer :household_bills
      t.integer :reacreation_culture
      t.integer :education
      t.integer :resturants_hotels
      t.integer :transport
      t.integer :other

      t.timestamps
    end
  end
end
