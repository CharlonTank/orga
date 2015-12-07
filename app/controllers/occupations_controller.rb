class OccupationsController < ApplicationController

	def hire
		@tournament = Tournament.find(params[:tournament_id])
		@occupation = @tournament.occupations.find_by_title_id(params[:title_id])
		@occupation.update_attribute(:user_id, params[:user_id])
		redirect_to @tournament
	end


	def accept
		occupation = Occupation.find(params[:occupation_id])
		occupation.update_attribute(:taken, true)
		redirect_to occupation.tournament
	end

	def decline
		occupation = Occupation.find(params[:occupation_id])
		occupation.update_attribute(:user_id, nil)
		redirect_to root_path
	end

end