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