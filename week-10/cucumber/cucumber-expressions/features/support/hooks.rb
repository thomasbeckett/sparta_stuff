Before('@numbers') do
  puts 'This test involves numbers'
end

After do
  puts 'look at these tests'
end

Before('@startdata') do
  @people = ["Keith","Kevin","Gary","Brian"]
end
