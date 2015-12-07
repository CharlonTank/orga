# == Schema Information
#
# Table name: occupations
#
#  id         :integer          not null, primary key
#  tournament_id :integer
#  title_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  taken      :boolean          default(FALSE)
#

class Occupation < ActiveRecord::Base
	belongs_to :title
	belongs_to :tournament
	belongs_to :user
end
