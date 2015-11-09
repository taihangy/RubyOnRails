class Recipe
	include HTTParty

	key_value = ENV['FOOD2FORK_KEY']
	hostport = 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key: key_value, fields: "image_url, title, social_rank, f2f_url"
	format :json

	def self.for (keyword)
		get("/search", query: {q: keyword})["recipes"]
	end
end
