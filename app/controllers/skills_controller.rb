class SkillsController < ApplicationController

	def show
		@skilled_users = User.joins(:titles).where('titles.id = ?', params[:title_id])
		@tournament = Tournament.find(params[:tournament_id])
	end

end