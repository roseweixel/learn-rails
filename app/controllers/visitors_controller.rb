class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
		flash.now[:notice] = "Welcome! Today is #{Date.today}."
		if @owner.countdown > 90
			flash.now[:notice] << ' My next birthday is still far away.'
		else
			flash.now[:alert] = 'My birthday is soon.'
		end
	end
	
end