require 'test_helper'

class TunnelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tunnel = tunnels(:one)
  end

  test "should get index" do
    get tunnels_url
    assert_response :success
  end

  test "should get new" do
    get new_tunnel_url
    assert_response :success
  end

  test "should create tunnel" do
    assert_difference('Tunnel.count') do
      post tunnels_url, params: { tunnel: { colour: @tunnel.colour, length: @tunnel.length } }
    end

    assert_redirected_to tunnel_url(Tunnel.last)
  end

  test "should show tunnel" do
    get tunnel_url(@tunnel)
    assert_response :success
  end

  test "should get edit" do
    get edit_tunnel_url(@tunnel)
    assert_response :success
  end

  test "should update tunnel" do
    patch tunnel_url(@tunnel), params: { tunnel: { colour: @tunnel.colour, length: @tunnel.length } }
    assert_redirected_to tunnel_url(@tunnel)
  end

  test "should destroy tunnel" do
    assert_difference('Tunnel.count', -1) do
      delete tunnel_url(@tunnel)
    end

    assert_redirected_to tunnels_url
  end
end
