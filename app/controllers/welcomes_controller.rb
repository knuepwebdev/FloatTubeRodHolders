module Spree
	class WelcomesController < Spree::StoreController
		def index
			render 'spree/welcomes/index'
		end
	end
end