# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Skill < ActiveRecord::Base
	belongs_to :user
	belongs_to :title
end
