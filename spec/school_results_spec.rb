require 'school_results'

describe Grades do

  it 'return No Results Given when passed an empty string' do
    expect(subject.scores("")).to eq("No results given")
  end

  it 'returns a single colour and the count of it' do
    expect(subject.scores("Green")).to eq("Green: 1")
  end

  it 'returns 2 colours and their respective counts' do
    expect(subject.scores("Green, Red")).to eq("Green: 1\nRed: 1")
  end

  it 'returns 3 colours and their respective values' do
    expect(subject.scores("Green, Amber, Red")).to eq("Green: 1\nAmber: 1\nRed: 1")
  end

  it 'responds to incorrect casing conventions' do
    expect(subject.scores("red, Green, Amber, amber")).to eq("Green: 1\nAmber: 2\nRed: 1")
  end

  it 'accounts for list items that are not the correct colours' do
    expect(subject.scores("Red, blue, Green, green, yellow")).to eq("Green: 2\nRed: 1\nUncounted: 2")
  end


  
end


=begin
  
To create a reporting system based on a list of student grades.

example: "green,Green, Red, Amber, red" -> "Green: 2\nAmber: 1\nRed: 2"

input                               | output 

""                                  "No results given."

"Green"                             "Green: 1"

"Green, Red"                        "Green: 1\nRed: 1"

"Green, Amber, Red"                 "Green: 1\nAmber: 1\nRed: 1"

"red, Green, Amber, amber"         "Green: 1\nAmber: 2\nRed: 1"

"Red, blue, Green, green, yellow"   "Green: 2\nRed: 1\nUncounted: 2"

"amber,green, Green, orange, Red"    "Green: 2\nAmber: 1\nRed: 1\nUncounted: 1"

=end