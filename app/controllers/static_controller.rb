class StaticController < ApplicationController
	def homepage
		@offers = Offer.all.order("created_at DESC")#.page(params[:page])	
	end
end
