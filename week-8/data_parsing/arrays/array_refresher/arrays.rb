# Single dimensional array

single_array = ['Steven Spielberg', 'Quentin Tarentino', 'George Lucas', 'M. Night Shamylan']

# p single_array[1]
# single_array.each do |director|
#   p director
# end

# 2d array
two_d_array = [
  ['Steven Spielberg',1950],
  ['Quentin Tarentino',1960],
  ['George Lucas',1955],
  ['M. Night Shamylan',1970]
]

# p two_d_array[3][1]
# p two_d_array.first.first

# multi dimensional
multi_d_array = [
  ['Steven Spielberg',1950,
    ['Jurassic Park','ET','Saving Private Ryan']],
  ['Quentin Tarentino',1960,
    ['Resevoir Dogs', 'Pulp fiction', 'Kill bill']],
  ['George Lucas',1955,
    ['Star Wars','Indiana Jones']],
  ['M. Night Shamylan',1970,
    ['Unbreakable','The Sixth Sense', 'Signs']]
]

p multi_d_array[1].last[1]
