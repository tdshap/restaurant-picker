require "yelp"

Yelp.client.configure do |config|
	config.consumer_key = "qjBn7w9ysesA7NfKax6Rmg"
	config.consumer_secret = "3K09jaBxhNkcpG9J9E660yWVg-s"
	config.token = "8cjoefSGOirobRBXFpPgJKRE3yFI4tTd"
	config.token_secret = "6ihjtlRkfIt9n2udACB7J4E_JVg"
end

params = { term: 'restaurant',
           limit: 3,
           category_filter: 'American (New)'
         }

# locale = { lang: 'fr' }

# 
# results = "Yelp.client.search('New York', params"




response = Yelp.client.search('New York', term: "restaurant", limit: 10)
