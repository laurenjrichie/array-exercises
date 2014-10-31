require 'spec_helper'

describe "Array basics, part 3" do

  let(:___) { nil }
  let(:dogs) {
    ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]
  }

  it "returns a count of the number of dogs" do
    dog_count = dogs.length
    expect(dog_count).to be == 6
  end

  it "returns an array of the lengths of each dog name" do
    dog_name_counts = dogs.map {|x| x.length}
    expect(dog_name_counts).to be == [4, 8, 4, 6, 4, 7]
  end

  it "returns each of the names reversed" do
    dog_names_reversed = dogs.map {|x| x.reverse}
    expect(dog_names_reversed).to be == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"]
  end

  it "returns the first three names" do
    first_three = dogs[0..2]
    expect(first_three).to be == ["Fido", "Harleigh", "Mali"]

  end

  it "returns a reversed case of the dog names" do
    dog_names_reverse_cased = dogs.map {|x| x.swapcase}
    expect(dog_names_reverse_cased).to be == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"]
  end

  it "returns a sum of the lengths of each of the names" do
    sum_of_name_lengths = dogs.map {|x| x.length}.inject(0, :+)
    expect(sum_of_name_lengths).to be == 33
  end

  it "returns all the dogs whose names are longer that 4 characters" do
    long_names = dogs.keep_if {|x| x.length > 4}
    expect(long_names).to be == ["Harleigh", "Trixie", "Victory"]
  end
end
