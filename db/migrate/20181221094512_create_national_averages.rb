class CreateNationalAverages < ActiveRecord::Migration[5.2]
  def change
    create_table :national_averages do |t|
        t.string :national_average
        t.integer :spending_category_id
      t.timestamps
    end
  end
end
