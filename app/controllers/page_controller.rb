class PageController < ApplicationController

  def home
		if user_signed_in?
			@tournaments_owned = Tournament.where(owner_id: current_user.id)
			tournaments = Tournament.joins(:occupations).where('occupations.user_id = ?', current_user.id)
			@tournaments_hired = tournaments.where('occupations.taken is true')
			@tournaments_pending = tournaments.where('occupations.taken is not true')
		end
	end

end