# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/default'

class DefaultTest < Minitest::Test
  def test_it_exists
    assert_instance_of(Default, Default.new)
  end
end
