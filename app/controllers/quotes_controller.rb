class QuotesController < ApplicationController


	def discover

		quote = Quote.offset(rand(Quote.count)).first

		quote_json = {
			:author  => quote.author,
			:content => quote.content,
			:category => quote.category
		}

		render :json => { :data => quote_json, :status => 200 }
	end

end