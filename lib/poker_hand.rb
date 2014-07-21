def poker_hand(card_array)
  deck = {
    1 => ['AS', 'AD', 'AH', 'AC'],
    2 => ['2S', '2D', '2H', '2C'],
    3 => ['3S', '3D', '3H', '3C'],
    4 => ['4S', '4D', '4H', '4C'],
    5 => ['5S', '5D', '5H', '5C'],
    6 => ['6S', '6D', '6H', '6C'],
    7 => ['7S', '7D', '7H', '7C'],
    8 => ['8S', '8D', '8H', '8C'],
    9 => ['9S', '9D', '9H', '9C'],
    10 => ['10S', '10D', '10H', '10C'],
    11 => ['JS', 'JD', 'JH', 'JC'],
    12 => ['QS', 'QD', 'QH', 'QC'],
    13 => ['KS', 'KD', 'KH', 'KC']
  }
  suitS_count = 0
  suitD_count = 0
  suitH_count = 0
  suitC_count = 0
  card_array.each do |value|
    if value.include?("S")
      suitS_count += 1
      if suitS_count == 5
        puts "Flush"
      end
    elsif value.include?("D")
      suitD_count += 1
      if suitD_count == 5
        puts "Flush"
      end
    elsif value.include?("D")
      suitH_count += 1
      if suitH_count == 5
        puts "Flush"
      end
    elsif value.include?("D")
      suitC_count += 1
      if suitC_count == 5
        puts "Flush"
      end
    end
  end
  value_holder = []
  card_array.each do |card|
    deck.each do |card_val, card_name|
      if card_name.include?(card)
        value_holder.push(card_val)
      end
    end
  end
  counts = Hash.new 0
  value_holder.each do |value|
    counts[value] += 1
  end
  pair_counter = 0
  three_of_a_kind_counter = 0
  four_of_a_kind_counter = 0
  counts.each do |count, value|
    if value == 2
      pair_counter += 1
    elsif value == 3
      three_of_a_kind_counter += 1
    elsif value == 4
      four_of_a_kind_counter += 1
    end
  end
  # puts pair_counter
  # puts three_of_a_kind_counter
  # puts four_of_a_kind_counter
end

poker_hand(["5D", "6D", "7D", "8D", "9C"])
