require 'spec_helper'

describe 'Array basics' do
  let(:___) { nil }
  let(:fruit) { ['apples', 'oranges', 'bananas', 'pomegranates', 'grapes'] }

  it "can report its length" do
    fruit_length = fruit.length
    expect( fruit_length ).to be == 5
  end

  it "can report the index of the string 'banana'" do  #should be 'bananas'?
    banana_index = fruit.index("bananas")
    expect( banana_index ).to be == 2
  end

  it "can create a new array where 'raspberries' is between apples and oranges" do
    new_array = fruit.dup.insert(1, 'raspberries')
    expect( new_array ).to be == ['apples', 'raspberries', 'oranges', 'bananas', 'pomegranates', 'grapes']
    expect(fruit.count).to be == 5
  end

  it "can report the length of each string in the array" do
    lengths = fruit.map {|x| x.length}
    expect( lengths ).to be == [6, 7, 7, 12, 6]
  end

  it "can create a new array where all the fruit capitalized" do
    new_array = fruit.map {|x| x.upcase}
    expect( new_array ).to be == ["APPLES", "ORANGES", "BANANAS", "POMEGRANATES", "GRAPES"]

  end

  it "can create a new array that returns only fruits containing a 'g'" do
    new_array = fruit.keep_if {|x| x.include?('g')}
    expect( new_array ).to be == ["oranges", "pomegranates", "grapes"]
  end
end
