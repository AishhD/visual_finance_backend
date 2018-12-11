class CreateCityOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :city_options do |t|
      t.string :city_name

      t.timestamps
    end
  end
end
