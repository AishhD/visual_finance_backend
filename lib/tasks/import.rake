require 'csv'

namespace :import do
    desc "import household spending by country" 
    task households: :enviroment do
        filename = File.join Rails.root, "OECD_Household_Spending.csv"
        CSV.foreach(filename) do |row|
            p row
        end
    end
end