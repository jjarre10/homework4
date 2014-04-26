Given /The following movies exist/ do |table|
    table.hashes.each do
      Movie.create!(movie)
    end

end
