require "application_system_test_case"

class TunnelsTest < ApplicationSystemTestCase
  setup do
    @tunnel = tunnels(:one)
  end

  test "visiting the index" do
    visit tunnels_url
    assert_selector "h1", text: "Tunnels"
  end

  test "creating a Tunnel" do
    visit tunnels_url
    click_on "New Tunnel"

    fill_in "Colour", with: @tunnel.colour
    fill_in "Length", with: @tunnel.length
    click_on "Create Tunnel"

    assert_text "Tunnel was successfully created"
    click_on "Back"
  end

  test "updating a Tunnel" do
    visit tunnels_url
    click_on "Edit", match: :first

    fill_in "Colour", with: @tunnel.colour
    fill_in "Length", with: @tunnel.length
    click_on "Update Tunnel"

    assert_text "Tunnel was successfully updated"
    click_on "Back"
  end

  test "destroying a Tunnel" do
    visit tunnels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tunnel was successfully destroyed"
  end
end
