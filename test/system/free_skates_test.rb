require "application_system_test_case"

class FreeSkatesTest < ApplicationSystemTestCase
  setup do
    @free_skate = free_skates(:one)
  end

  test "visiting the index" do
    visit free_skates_url
    assert_selector "h1", text: "Free Skates"
  end

  test "creating a Free skate" do
    visit free_skates_url
    click_on "New Free Skate"

    fill_in "Description", with: @free_skate.description
    click_on "Create Free skate"

    assert_text "Free skate was successfully created"
    click_on "Back"
  end

  test "updating a Free skate" do
    visit free_skates_url
    click_on "Edit", match: :first

    fill_in "Description", with: @free_skate.description
    click_on "Update Free skate"

    assert_text "Free skate was successfully updated"
    click_on "Back"
  end

  test "destroying a Free skate" do
    visit free_skates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Free skate was successfully destroyed"
  end
end
