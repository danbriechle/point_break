# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/point_break'

class PointBreakTest < Minitest::Test
  def test_it_exists
    string = 'Wow neato!'
    assert_instance_of(PointBreak, PointBreak.new(string))
  end

  def test_it_can_insert_break_points
    terms = %w[I string]
    string = 'I am a string'

    assert_equal(PointBreak.new(string).break_on(terms), '<br>I</br>am a <br>string</br>')
  end

  # sad path
  def test_it_does_not_break_on_partial_words
    terms = %w[I string str]
    string = 'I am a string'

    assert_equal(PointBreak.new(string).break_on(terms), '<br>I</br>am a <br>string</br>')
  end
end
