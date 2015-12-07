# == Schema Information
#
# Table name: titles
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Title < ActiveRecord::Base
	has_many :skills
	has_many :users, through: :skills
	has_many :tournaments, through: :occupations
	has_many :occupations
end