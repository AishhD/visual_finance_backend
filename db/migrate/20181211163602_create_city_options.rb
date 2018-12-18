class CreateCityOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :city_options do |t|
      t.string :city_name
      t.integer :spending_category_id

      t.timestamps
    end
  end
end
