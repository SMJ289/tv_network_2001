require 'minitest/autorun'
require 'minitest/pride'
require './lib/character.rb'

class CharacterTest < Minitest::Test

def test_it_exists
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

  assert_instance_of Character, kitt
end

def test_it_can_show_name
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

  assert_equal "KITT", kitt.name
end

def test_it_can_actor
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  
  assert_equal "William Daniels", kitt.actor
end

end

# pry(main)> kitt.actor
# # => "William Daniels"
#
# pry(main)> kitt.salary
# # => 1000000