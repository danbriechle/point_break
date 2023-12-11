# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/point_break'

class PointBreakTest < Minitest::Test
  def test_it_exists
    assert_instance_of(PointBreak, PointBreak.new)
  end
end
