require 'test_helper'

class FerretsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ferret = ferrets(:one)
  end

  test "should get index" do
    get ferrets_url
    assert_response :success
  end

  test "should get new" do
    get new_ferret_url
    assert_response :success
  end

  test "should create ferret" do
    assert_difference('Ferret.count') do
      post ferrets_url, params: { ferret: { charity_id: @ferret.charity_id, name: @ferret.name, neutered: @ferret.neutered } }
    end

    assert_redirected_to ferret_url(Ferret.last)
  end

  test "should show ferret" do
    get ferret_url(@ferret)
    assert_response :success
  end

  test "should get edit" do
    get edit_ferret_url(@ferret)
    assert_response :success
  end

  test "should update ferret" do
    patch ferret_url(@ferret), params: { ferret: { charity_id: @ferret.charity_id, name: @ferret.name, neutered: @ferret.neutered } }
    assert_redirected_to ferret_url(@ferret)
  end

  test "should destroy ferret" do
    assert_difference('Ferret.count', -1) do
      delete ferret_url(@ferret)
    end

    assert_redirected_to ferrets_url
  end
end
