class CreateChildrenOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :children_options do |t|
      t.string :children
      t.integer :spending_category_id

      t.timestamps
    end
  end
end
