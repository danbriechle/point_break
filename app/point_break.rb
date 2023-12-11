# frozen_string_literal: true

class PointBreak
  def initialize(string)
    @string = string
  end

  def break_on(arry)
    new_arry = []

    @string.split(' ').each do |word|
      arry.include?(word) ? new_arry.push("<br>#{word}</br>") : new_arry.push("#{word} ")
    end

    new_arry.join
  end
end
