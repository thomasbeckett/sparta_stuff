Given("I have a data table") do |table|

  @table = table.rows
end

Then("I am able to print out each name and role to the command line") do
  @table.each do |i|
    p i
  end
end
