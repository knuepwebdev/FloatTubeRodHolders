class Spree::WelcomesController < Spree::StoreController
	def index
		render 'spree/welcomes/index'
	end
end