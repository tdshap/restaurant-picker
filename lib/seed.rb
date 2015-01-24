# sites to scrape 
http://www.grubstreet.com/2014/07/101-best-new-cheap-eats-ranked/slideshow/
http://ny.eater.com/maps/best-restaurants-new-york-city-restaurants-winter-2015
http://www.tastingtable.com/restaurants/new-york-city

# tasting table

# array of restaurant names l=94

name = document.getElementsByClassName("cr-name")[x].children[0].innerText
url = document.getElementsByClassName("cr-name")[x].children[1].href

cuisine = document.getElementsByClassName("cr-style")[x].innerText
neighborhood = document.getElementsByClassName("cr-hood")[x].innerText

price = document.getElementsByClassName("cr-price")[x].innerText



# immaculate innfatuation

# ://www.theinfatuation.com/?
immaculate_category_key_search_query_values = {


	:"Adventurous Eating" => "perfect_for%5B%5D=22&",
	:"Authentic Ethnic Eats" => "perfect_for%5B%5D=251&",
	:"Big Groups" =>"perfect_for%5B%5D=217&",
	:"Birthdays" => "perfect_for%5B%5D=35&",
	:"Buffalo Wing Fix" => "perfect_for%5B%5D=103&",
	:"BYOB" => "perfect_for%5B%5D=158&",
	:"Cheap Eats" => "perfect_for%5B%5D=257&",
	:"Chronic Brunch" => "perfect_for%5B%5D=30&",
	:"Chronic Brunch"  => "perfect_for%5B%5D=30&",
	:"Damn Good Steaks" => "perfect_for%5B%5D=220&",
	:"Date Night" => "perfect_for%5B%5D=12&",
	:"Day Drinking" => "perfect_for%5B%5D=247,&",
	:"Dinner with the Parents" => "perfect_for%5B%5D=121&",
	:"Eats with a View" => "perfect_for%5B%5D=214&",
	:"Fine Dining" => "perfect_for%5B%5D=157&",
	:"Full On Pork Indulgence" => "perfect_for%5B%5D=23&",
	:"Late Night Eats" => "perfect_for%5B%5D=18&",
	:"Lunch" => "perfect_for%5B%5D=368&",
	:"Outdoor/Patio Situation" => "perfect_for%5B%5D=129&",
	:"Oysters" => "perfect_for%5B%5D=250&",
	:"Quality Fish" => "perfect_for%5B%5D=15&",
	:"Specialty Cocktails" => "perfect_for%5B%5D=34&",
}


# cuisines:
# Bar Food
# Bagels
# Burgers
# Deli
# Experimental
# Fast Food
# Sandwiches
# Steaks


cuisine =[
{:"American" => "Diner"},
"Armenian",
"Australian",
"Austrian",
"Belgian",
"Burmese",
"Canadian",
{:"Chinese" => "Dim Sum"},
"Cuban",
"Eastern European",
"English",
"Filipino",
"French",
"German",
"Greek",
"Indian",
"Irish",
{:"Italian" => ["Pasta", "Pizza"]
"Jamaican",
{:"Japanese" => ["Ramen", "Sushi"],
"Jewish",
"Korean",
"Kosher",
"Latin",
"Lebanese",
"Malaysian",
"Mediterranean",
"Mexican",
"Middle Eastern"
"Moroccan"
"New Zealand"
"Nordic"
"Pan-Asian"
"Portuguese"
{:"Ocrean" => ["Raw Bar", "Seafood"],
"Russian",
"Scandinavian",
"Scottish",
"South American",
{:"Southern" => "BBQ" },
{:"Spanish" => "Tapas"},
"Thai",
"Vietnamese"]











