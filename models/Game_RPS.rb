class Game

  def self.play_basic(hand1, hand2)

    return logic(hand1, hand2)

  end #End of playbasic method

  def self.play_pc(hand1)

      pc_array = ["Rock", "Paper", "Scissors"]
      number = rand(1..3)
      hand2 = pc_array[number]
      result_string = logic(hand1, hand2)
      if result_string.include?("Player 2")
        result_string = result_string.sub("Player 2", "Computer")
      end
      return result_string
  end

  def self.logic(hand1, hand2)

    if hand1 == hand2
      return "Draw"
    end

    if hand1 == "Rock"
      if hand2 == "Paper"
        return "Player 2 wins with Paper"
      else
        return "Player 1 wins with Rock"
      end
    end

    if hand1 == "Paper"
      if hand2 == "Rock"
        return "Player 1 wins with Paper"
      else
        return "Player 2 wins with scissors"
      end
    end

    if hand1 == "Scissors"
      if hand2 == "Paper"
        return "Player 1 wins with Scissors"
      else
        return "Player 2 wins with Rock"
      end
    end

  end

end  #End game class
