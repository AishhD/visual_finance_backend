class CreateAgeOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :age_options do |t|
      t.string :age_group
      t.integer :spending_category_id

      t.timestamps
    end
  end
end
