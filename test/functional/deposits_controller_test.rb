require 'test_helper'

class DepositsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_create_invalid
    Deposit.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Deposit.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to deposits_url
  end

  def test_destroy
    deposit = Deposit.first
    delete :destroy, :id => deposit
    assert_redirected_to deposits_url
    assert !Deposit.exists?(deposit.id)
  end
end
