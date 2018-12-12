class AddIdToSpendingCategories < ActiveRecord::Migration[5.2]
  class CreateSpendingCategories < ActiveRecord::Base
  end

  def change
    add_column :spending_categories, :city_option_id, :integer, :default => nil
    add_column :spending_categories, :age_option_id, :integer, :default => nil
  end
end
