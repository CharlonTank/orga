# == Schema Information
#
# Table name: tournaments
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer
#

class Tournament < ActiveRecord::Base
	has_many :occupations
	has_many :titles, through: :occupations

	belongs_to :user, foreign_key: :owner_id

  def create_occupations
  	Title.all.each do |title|
      Occupation.create(title_id: title.id, tournament_id: self.id)
    end
  end

  def owner
  	user
  end

end