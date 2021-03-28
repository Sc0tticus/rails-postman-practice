class SandwichesController < ApplicationController
	# /sandwiches GET
	def index
		@sandwiches = Sandwich.all
		render json: @sandwiches
	end
end
