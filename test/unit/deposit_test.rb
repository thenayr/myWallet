require 'test_helper'

class DepositTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Deposit.new.valid?
  end
end
