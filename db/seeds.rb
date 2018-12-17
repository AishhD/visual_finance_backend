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



# children stats
children = SpendingCategory.create!(
  food_non_alcholic_drinks: 74.5,
  alcoholic_drinks_tobacco_narcotics: 11.8,
  clothing_footwear: 34.2,
  household_bills: 82.7,
  recreation_culture: 82.3,
  education: 12.1,
  resturants_hotels: 52.6,
  transport: 90.1,
  other: 55.2)

# age national stats
age1NS = SpendingCategory.create!(
  food_non_alcholic_drinks: 43.60,
  alcoholic_drinks_tobacco_narcotics: 10.00,
  clothing_footwear: 19.10,
  household_bills: 122.50,
  recreation_culture: 49.80,
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
  recreation_culture: 75.60,
  education: 6.5,
  resturants_hotels: 56.90,
  transport: 94.40,
  other: 48.10,
  age_option_id: 2)

age3NS = SpendingCategory.create!(food_non_alcholic_drinks: 63.90,
  alcoholic_drinks_tobacco_narcotics: 15.20,
  clothing_footwear: 29.90,
  household_bills: 61.10,
  recreation_culture: 88.10,
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
  recreation_culture: 86.60,
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
  recreation_culture: 41.40,
  education: 0,
  resturants_hotels: 20.70,
  transport: 29.70,
  other: 26.10,
  age_option_id: 5)


# city national database


northEastNS = SpendingCategory.create!(
  food_non_alcholic_drinks: 49.80,
  alcoholic_drinks_tobacco_narcotics: 10.60,
  clothing_footwear: 23.40,
  household_bills: 56.10,
  recreation_culture: 65.20,
  education: 3.50,
  resturants_hotels: 38.60,
  transport: 58.50,
  other: 29.70,
  city_option_id: 1)


northWestNS = SpendingCategory.create!(
  food_non_alcholic_drinks: 55.30,
  alcoholic_drinks_tobacco_narcotics: 12.70,
  clothing_footwear: 23.20,
  household_bills: 62.20,
  recreation_culture: 70.50,
  education: 3.10,
  resturants_hotels: 43.20,
  transport: 69.90,
  other: 38.00,
  city_option_id: 2)

yorkshireTheHumberNS = SpendingCategory.create!(
  food_non_alcholic_drinks: 51.00,
  alcoholic_drinks_tobacco_narcotics: 11.7,
  clothing_footwear: 20.9,
  household_bills: 61.2,
  recreation_culture: 69.4,
  education: 6.2,
  resturants_hotels: 42.8,
  transport: 67.4,
  other: 33.7,
  city_option_id: 3)

eastMidlandsNS = SpendingCategory.create!(
  food_non_alcholic_drinks: 57.9,
  alcoholic_drinks_tobacco_narcotics: 12.4,
  clothing_footwear: 22.8,
  household_bills: 66.7,
  recreation_culture: 67.2,
  education: 12.7,
  resturants_hotels: 42.1,
  transport: 79.4,
  other: 39.9,
  city_option_id: 4)

westMidlandsNS = SpendingCategory.create!(
  food_non_alcholic_drinks: 56.7,
  alcoholic_drinks_tobacco_narcotics: 10.9,
  clothing_footwear: 25.1,
  household_bills: 66.9,
  recreation_culture: 58.5,
  education: 1.7,
  resturants_hotels: 39.5,
  transport: 65.1,
  other: 37.7,
  city_option_id: 5)

eastNS = SpendingCategory.create!(
  food_non_alcholic_drinks: 60.3,
  alcoholic_drinks_tobacco_narcotics: 11.5,
  clothing_footwear: 25.0,
  household_bills: 66.6,
  recreation_culture: 70.3,
  education: 9.2,
  resturants_hotels: 47.2,
  transport: 87.4,
  other: 47.0,
  city_option_id: 6)


londonNS = SpendingCategory.create!(
  food_non_alcholic_drinks: 61.6,
  alcoholic_drinks_tobacco_narcotics: 9.5,
  clothing_footwear: 27.1,
  household_bills: 122.0,
  recreation_culture: 71.5,
  education: 13.4,
  resturants_hotels: 59.7,
  transport: 71.8,
  other: 46.0,
  city_option_id: 7)


southEastNS = SpendingCategory.create!(
  food_non_alcholic_drinks: 63.0,
  alcoholic_drinks_tobacco_narcotics: 12.8,
  clothing_footwear: 26.1,
  household_bills: 76.9,
  recreation_culture: 86.2,
  education: 7.9,
  resturants_hotels: 52.0,
  transport: 95.7,
  other: 49.2,
  city_option_id: 8)

  southWestNS = SpendingCategory.create!(
    food_non_alcholic_drinks: 58.9,
    alcoholic_drinks_tobacco_narcotics: 10.7,
    clothing_footwear: 20.0,
    household_bills: 70.6,
    recreation_culture: 71.7,
    education: 7.1,
    resturants_hotels: 43.8,
    transport: 76.2,
    other: 40.6,
    city_option_id: 9)



ed = User.create(username: "ed", password: "meow", age: "less than 30",location: "london", children: "false")

edspendingData = SpendingDatum.create!(food_non_alcholic_drinks: 20,
   alcoholic_drinks_tobacco_narcotics: 57, clothing_footwear: 182,
    household_bills: 899,
    recreation_culture: 76,
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
  recreation_culture: 76,
  education: 24,
  resturants_hotels: 63,
  transport: 63,
  other: 5,
  user_id: 1,
  date: "22932")
