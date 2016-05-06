Rails.application.config.middleware.use OmniAuth::Builder do 

	#provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"]
	provider :twitter, "KvLDpFsKr5oefCYc12RTgQ", "Dx1ojI9aQxCeBrJIoYyuKI0WeDXHHO8TRkOIIINW4"

end