require "application_system_test_case"

class FerretsTest < ApplicationSystemTestCase
  setup do
    @ferret = ferrets(:one)
  end

  test "visiting the index" do
    visit ferrets_url
    assert_selector "h1", text: "Ferrets"
  end

  test "creating a Ferret" do
    visit ferrets_url
    click_on "New Ferret"

    fill_in "Charity", with: @ferret.charity_id
    fill_in "Name", with: @ferret.name
    fill_in "Neutered", with: @ferret.neutered
    click_on "Create Ferret"

    assert_text "Ferret was successfully created"
    click_on "Back"
  end

  test "updating a Ferret" do
    visit ferrets_url
    click_on "Edit", match: :first

    fill_in "Charity", with: @ferret.charity_id
    fill_in "Name", with: @ferret.name
    fill_in "Neutered", with: @ferret.neutered
    click_on "Update Ferret"

    assert_text "Ferret was successfully updated"
    click_on "Back"
  end

  test "destroying a Ferret" do
    visit ferrets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ferret was successfully destroyed"
  end
end
