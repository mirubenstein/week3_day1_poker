require ("rspec")
require ("poker_hand")

describe("poker_hand") do
  it("if hand doesn't fit into any other score, return high card") do
    poker_hand(['2S', '3C', '4D', '5C', '7H']).should(eq("High Card"))
  end
  it("if hand has two cards of same rank, return one pair") do
    poker_hand(['2S', '2C', '4D', '5C', '7H']).should(eq("One Pair"))
  end
end
