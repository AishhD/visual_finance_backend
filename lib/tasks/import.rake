# require 'csv'

# namespace :import do
#     desc "import household spending by country" 
#     task households: :enviroment do
        
#         CSV.foreach(filename) do |row|
#             p row
#         end
#     end
# end

# require 'csv'    

# filename = File.join Rails.root, "OECD_Household_Spending.csv"
# csv_text = File.read(filename)
# csv = CSV.parse(csv_text, :headers => true)
# csv.each do |row|
#     HouseholdSpending.create!(row.to_hash)
# end