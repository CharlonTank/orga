# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
commentator = Title.create(name: 'Commentator')
Title.create(name: 'Tournament Organizer')
Title.create(name: 'Competitor')
streamer = Title.create(name: 'Streamer')

bestcommentator = User.create(name: 'BestCommentator', email: 'best@Commentator.com', password: 'password')
beststreamer = User.create(name: 'BestStreamer', email: 'best@Streamer.com', password: 'password')

bestcommentator.titles << commentator
beststreamer.titles << streamer
bestcommentator.save
beststreamer.save