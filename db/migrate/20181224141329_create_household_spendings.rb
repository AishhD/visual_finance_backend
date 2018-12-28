class CreateHouseholdSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :household_spendings do |t|
      t.string :country
      t.float :value
    end
  end
end
