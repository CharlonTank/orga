## Handle ambigous error ##
Capybara.configure do |config|
  config.match = :prefer_exact
  config.ignore_hidden_elements = false
end


Given(/^I'm on the homepage$/) do
	visit '/'
end

Given(/^There is some titles$/) do
	Title.create(name: 'Commentator')
	Title.create(name: 'Competitor')
	Title.create(name: 'Tournament Organizer')
end

Given(/^There is one "(.*?)" registered as "(.*?)" and "(.*?)" and "(.*?)"$/) do |title, name, email, password|
	fill_in 'Name', with: name
	fill_in 'Email', with: email
	fill_in 'Password', with: password
	click_button 'Sign up'
	click_link name
	select(title, from: 'title_title_id')
	click_button 'Update'
	click_link 'Logout'
end

Given(/^I register myself as "(.*?)" and "(.*?)" and "(.*?)"$/) do |name, email, password|
	fill_in 'Name', with: name
	fill_in 'Email', with: email
	fill_in 'Password', with: password
	click_button 'Sign up'
end

Given(/^I create a tournament "(.*?)"$/) do |name|
	click_link 'Create a tournament'
	fill_in 'Name', with: name
	click_button 'Create'
	# stripe
end

Given(/^I click on "(.*?)"$/) do |arg1|
	click_link arg1	
end

Given(/^I disconnect$/) do
	click_link 'Logout'
end

Given(/^I connect as "(.*?)" and "(.*?)"$/) do |email, password|
	within('#session') do
		fill_in 'Email', with: email
		fill_in 'Password', with: password
	end
	click_button 'Log in'
end

Then(/^I should be able to see "(.*?)"$/) do |arg1|
	expect(page).to have_content(arg1)
end

Given(/^I add the title "(.*?)"$/) do |title|
	select(title, from: 'title_title_id')
	fill_in 'Password', with: "password"
	click_button 'Update'
end

Given(/^I remove the title "(.*?)"$/) do |arg1|
	save_and_open_page
	click_button 'remove'
end

Then(/^I shouldn't be able to see "(.*?)"$/) do |arg1|
	expect(page).to_not have_content(arg1)
end