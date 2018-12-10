class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.integer :question_id
      t.integer :category
      t.string :type
      t.integer :value

      t.timestamps
    end
  end
end
