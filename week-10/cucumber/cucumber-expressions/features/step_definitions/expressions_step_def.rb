Given("I provide an integer of {int}") do |int|
  @input_int = int
end

Then("I will be able to test the integer") do
  expect(@input_int).to eq 14
end

Given("I provide an float of {float}") do |float|
  @input_float = float
end

Then("I will be able to test the float") do
  expect(@input_float).to be_a Float
end

Given("I provide a specific word {word}") do |word|
  @input_string = word
end

Then("I can test the word") do
  expect(@input_string.length).to eq 4
end

Given("I have {int} pencil(s)/pen(s)") do |int|
  @input = int
end

Then("I will be able to test how many pens and pencils I have") do
  expect(@input).to be_an Integer
end

Given(/^I provide something specific like (\w*@[A-Za-z]*\.[A-Za-z]*\.?[A-Za-z]*) I can capture it using a regex$/) do |text|
  @regex = text
end

Then("I will be able to test the captured word") do
  # expect(@regex).to eq "cheese"
  p @regex
end


Given("I have data from a before hook") do
  @people.each do |person|
    puts person
  end
end
