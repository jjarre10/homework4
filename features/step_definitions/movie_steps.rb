Given(/^the following movies exist:$/) do |table|
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

##Scenario 1

When(/^I go to the (.*?) for "(.*?)"$/) do |page_name, movie|
  movie = Movie.find_by_title(movie)
  path_to(page_name, movie[:id] )
end

Then(/^I fill in "(.*?)" with "(.*?)"$/) do |director, value| 
  director = director.downcase

  fill_in 'director', :with => value
end

And(/^I press "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  #arg1.should_be(director=>arg2)
  movie = Movie.find_by_title(arg1)
  assert arg2 == movie.director
end

##Scenario 2

Given(/^I am on the details page for "(.*?)"$/) do |movie|
  #movie = Movie.find_by_title(movie) #Added this but with less coverage????
end

When(/^I follow "([^"]*)"$/) do |link|
  #click_link(link) #doesn't work
end

Then(/^I should be on the Similar Movies page for "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be on the home page$/) do
  pending # express the regexp above with the code you wish you had
end

def find_movies_with_same_director #call on up above in scenerio 2
  
end

