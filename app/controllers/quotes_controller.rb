class QuotesController < ApplicationController


	def discover

		quote = Quote.offset(rand(Quote.count)).first

		quote_json = {
			:author  => quote.author,
			:content => quote.content,
			:category => quote.category
		}

		sleep(3.0)

		render :json => { :author  => quote.author,
			:content => quote.content,
			:category => quote.category}
	end

end