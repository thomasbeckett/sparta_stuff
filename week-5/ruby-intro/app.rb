require "pp"
require "mac/say"
require "faker"

# puts "hello"
#
# print 'This comment '
# print "will be on one line\n"
#
# p 'this is some text'

# Get all the voices

talker = Mac::Say.new(voice: :"alex", rate: 200)
talker.say string: Faker::Dota.quote
# this is a comment
