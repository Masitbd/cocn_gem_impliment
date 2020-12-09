require "application_system_test_case"

class CashmastersTest < ApplicationSystemTestCase
  setup do
    @cashmaster = cashmasters(:one)
  end

  test "visiting the index" do
    visit cashmasters_url
    assert_selector "h1", text: "Cashmasters"
  end

  test "creating a Cashmaster" do
    visit cashmasters_url
    click_on "New Cashmaster"

    fill_in "Comments", with: @cashmaster.comments
    fill_in "Name", with: @cashmaster.name
    fill_in "Price", with: @cashmaster.price
    click_on "Create Cashmaster"

    assert_text "Cashmaster was successfully created"
    click_on "Back"
  end

  test "updating a Cashmaster" do
    visit cashmasters_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @cashmaster.comments
    fill_in "Name", with: @cashmaster.name
    fill_in "Price", with: @cashmaster.price
    click_on "Update Cashmaster"

    assert_text "Cashmaster was successfully updated"
    click_on "Back"
  end

  test "destroying a Cashmaster" do
    visit cashmasters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cashmaster was successfully destroyed"
  end
end
