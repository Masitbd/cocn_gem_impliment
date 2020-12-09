require 'test_helper'

class CashmastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashmaster = cashmasters(:one)
  end

  test "should get index" do
    get cashmasters_url
    assert_response :success
  end

  test "should get new" do
    get new_cashmaster_url
    assert_response :success
  end

  test "should create cashmaster" do
    assert_difference('Cashmaster.count') do
      post cashmasters_url, params: { cashmaster: { comments: @cashmaster.comments, name: @cashmaster.name, price: @cashmaster.price } }
    end

    assert_redirected_to cashmaster_url(Cashmaster.last)
  end

  test "should show cashmaster" do
    get cashmaster_url(@cashmaster)
    assert_response :success
  end

  test "should get edit" do
    get edit_cashmaster_url(@cashmaster)
    assert_response :success
  end

  test "should update cashmaster" do
    patch cashmaster_url(@cashmaster), params: { cashmaster: { comments: @cashmaster.comments, name: @cashmaster.name, price: @cashmaster.price } }
    assert_redirected_to cashmaster_url(@cashmaster)
  end

  test "should destroy cashmaster" do
    assert_difference('Cashmaster.count', -1) do
      delete cashmaster_url(@cashmaster)
    end

    assert_redirected_to cashmasters_url
  end
end
