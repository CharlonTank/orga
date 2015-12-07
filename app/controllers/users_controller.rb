class UsersController < ApplicationController

	def show
		@user = User.find(params[:user_id])
		@tournament = Tournament.find(params[:tournament_id])
	end

end