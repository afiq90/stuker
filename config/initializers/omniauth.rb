Rails.application.config.middleware.use OmniAuth::Builder do 

	#provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"]
	provider :twitter, "KvLDpFsKr5oefCYc12RTgQ", "Dx1ojI9aQxCeBrJIoYyuKI0WeDXHHO8TRkOIIINW4"
	provider :facebook, "142197559138563", "8c0af3c269cef53cd307147f9b9b3b4e", scope: 'email, publish_actions'

	OmniAuth.config.on_failure = Proc.new do |env|
		ConnectionsController.action(:omniauth_failure).call(env)
	end

end