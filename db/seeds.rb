# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



city1 = CityOption.create!(city_name: "North East")
city2 = CityOption.create!(city_name: "North West")
city3 = CityOption.create!(city_name: "Yorkshire and The Humber")
city4 = CityOption.create!(city_name: "East Midlands")
city5 = CityOption.create!(city_name: "West Midlands")
city6 = CityOption.create!(city_name: "East")
city7 = CityOption.create!(city_name: "London")
city8 = CityOption.create!(city_name: "South East")
city9 = CityOption.create!(city_name: "South West")



age1 = AgeOption.create!(age_group: "less than 30")
age2 = AgeOption.create!(age_group: "30 to 40")
age3 = AgeOption.create!(age_group: "50 to 64")
age4 = AgeOption.create!(age_group: "65 to 74")
age5 = AgeOption.create!(age_group: "75 or over")

age1NS = SpendingCategory.create!(
  food_non_alcholic_drinks: 43.60,
  alcoholic_drinks_tobacco_narcotics: 10.00,
  clothing_footwear: 19.10,
  household_bills: 122.50,
  reacreation_culture: 49.80,
  education: 6.40,
  resturants_hotels: 52.40,
  transport: 68.60,
  other: 32.8,
  age_option_id: 1)


age2NS = SpendingCategory.create!(
  food_non_alcholic_drinks: 65.60,
  alcoholic_drinks_tobacco_narcotics: 12.00,
  clothing_footwear: 31.90,
  household_bills: 88.00,
  reacreation_culture: 75.60,
  education: 6.5,
  resturants_hotels: 56.90,
  transport: 94.40,
  other: 48.10,
  age_option_id: 2)

age3NS = SpendingCategory.create!(food_non_alcholic_drinks: 63.90,
  alcoholic_drinks_tobacco_narcotics: 15.20,
  clothing_footwear: 29.90,
  household_bills: 61.10,
  reacreation_culture: 88.10,
  education: 10.20,
  resturants_hotels: 59.70,
  transport: 95.30,
  other: 48.10,
  age_option_id: 3)

age4NS = SpendingCategory.create!(
  food_non_alcholic_drinks: 54.70,
  alcoholic_drinks_tobacco_narcotics: 12.10,
  clothing_footwear: 19.00,
  household_bills: 55.40,
  reacreation_culture: 86.60,
  education: 0.50,
  resturants_hotels: 43.10,
  transport: 71.50,
  other: 35.90,
  age_option_id: 4)

age5NS = SpendingCategory.create!(
  food_non_alcholic_drinks: 40.80,
  alcoholic_drinks_tobacco_narcotics: 6.50,
  clothing_footwear: 9.60,
  household_bills: 43.30,
  reacreation_culture: 41.40,
  education: 0,
  resturants_hotels: 20.70,
  transport: 29.70,
  other: 26.10,
  age_option_id: 1)

ed = User.create(username: "ed", password: "meow", age: "less than 30",location: "london", children: "false")

edspendingData = SpendingDatum.create!(food_non_alcholic_drinks: 20,
   alcoholic_drinks_tobacco_narcotics: 57, clothing_footwear: 182,
    household_bills: 899,
    reacreation_culture: 76,
    education: 24,
    resturants_hotels: 63,
    transport: 63,
    other: 5,
    user_id: 1,
    date: "22932")

edtargetData = TargetDatum.create!(food_non_alcholic_drinks: 20,
  alcoholic_drinks_tobacco_narcotics: 57,
  clothing_footwear: 182,
  household_bills: 899,
  reacreation_culture: 76,
  education: 24,
  resturants_hotels: 63,
  transport: 63,
  other: 5,
  user_id: 1,
  date: "22932")
