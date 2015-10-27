require 'rubygems'
#require 'json'
#require 'pry'

# Objective: Open file, parse file, show contents, add a new line, overwrite old file
# buffer = File.open('q1.txt', 'r').read #r is for read
# $states = JSON.parse(buffer)

buffer = File.read('q1.txt')

#p buffer

class State
  attr_accessor :state
    def initialize
      @state = gets()
      end
    def year_old(year)
      @year = year
    end
end

#print "Do you have a new quarter?"
print "Do you have a new quarter?"

haveNew = gets()

if haveNew.chomp.downcase == "yes" then
  print "Which state? "

  newb = State.new
  newQuarter = newb.instance_variable_get(:@state).chomp

  if buffer.downcase.include? newQuarter.downcase
    print "You already have it"
  elsif
    #p newQuarter
    buffer << newQuarter
    File.open("q1.txt", "w+") do |i|
      i.puts(buffer)
    end

    print "I have stored it for you, Dave"
else

puts "You said " + haveNew.chomp + ", so we'll stop here"

puts '/["Alaska","Arizona","California","Connecticut","Colorado","Florida","Georgia","Hawaii","Idaho","Illinois","Kansas","Kentucky","Louisiana","Maryland","Massachusetts","Minnesota","Mississippi","Missouri","Montana","Nevada","New Hampshire","New York","North Carolina","North Dakota","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Wyoming"/]'.downcase

=begin
open('q1.txt', 'a') do |f|
  f.puts buffer
end


if somestuff
  puts 'some things'
elsif
  puts 'do other things'
else
  puts 'last thing'
end
=end
end
end


=begin
input_coin_type = gets()
coin_value = case coin
when "quarter" then "$0.25"
when "dime" then "$0.10"
=end


=begin
$.include File.open('q1.txt', 'w') #w is for write
puts $states.to_json
=end



# print $states



=begin


def addState()
  state = gets()
  if $states.include? == state
    then
    print "You already have it"
  $states << state.chomp.to_s
  else
    print "I have stored it for you, Dave"
end

$> = File.open('q1.txt', 'w') #w is for write
puts $states.to_json
=end


=begin #old code
def addState()
  state = gets()
  if $states.include? state
    print "You already have it"
  $states << state.chomp.to_s
  print "I have stored it for you, Dave"
end

buffer = File.open('q1.txt', 'r').read #r is for read
$states = JSON.parse(buffer)

sc = $states.count
puts "QUARTER COLLECTION"
puts sc.to_s + " states collected so far!"
scl = 50 - sc
puts "That's " + scl.to_s + " to go!"

#seems to end here

print "Do you have a new quarter? "
haveNew = gets()

if haveNew == "yes"
  print "Which state? "
  addState
end

# print $states

$> = File.open('q1.txt', 'w') #w is for write
puts $states.to_json

end
=end #old code                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
