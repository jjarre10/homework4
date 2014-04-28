Given(/^the following movies exist:$/) do |table|
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end
Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  #arg1.should_be(director=>arg2)
  movie = Movie.find_by_title(arg1)
  assert arg2 == movie.director
end

When(/^I go to the (.*?) for "(.*?)"$/) do |movie|
  path_to(movie)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^I press "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I am on the details page for "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I follow "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
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

