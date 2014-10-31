require "spec_helper"

describe "Array basics, part 2" do

  let(:___) { nil }
  let(:friends) {
    [
      "Martha",
      "Kane",
      "John",
      "Zeke",
      "Adolfo",
      "Janis",
      "Ko"
    ]
  }

  it "returns our friends in alphabetical order" do
    ordered_friends = friends.sort
    expect(ordered_friends).to be == ["Adolfo", "Janis", "John", "Kane", "Ko", "Martha", "Zeke"]
  end

  it "returns our friends in the opposite order to the way they are currently in the array" do
    alt_ordered_friends = friends.reverse
    expect(alt_ordered_friends).to be == ["Ko", "Janis", "Adolfo", "Zeke", "John", "Kane", "Martha"]
  end

  it "returns our friends in reverse alphabetical order" do
    alt_ordered_friends = friends.sort.reverse
    expect(alt_ordered_friends).to be == ["Zeke", "Martha", "Ko", "Kane", "John", "Janis", "Adolfo"]
  end

  it "returns a nested array, where each element includes the name and length of that name" do
    friend_data = friends.map {|x| new_array = [x, x.length]}
    expect(friend_data).to be == [["Martha", 6], ["Kane", 4], ["John", 4], ["Zeke", 4], ["Adolfo", 6], ["Janis", 5], ["Ko", 2]]
  end
end
