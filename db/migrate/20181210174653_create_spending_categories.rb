class CreateSpendingCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :spending_categories do |t|
      t.string :category
      t.integer :amount

      t.timestamps
    end
  end
end
