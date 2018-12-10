class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :saving_type_id
      t.integer :account_id
      t.integer :national_user_age_id
      t.integer :national_user_location_id
      t.integer :national_user_children_id

      t.timestamps
    end
  end
end
