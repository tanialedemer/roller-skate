require "application_system_test_case"

class CompulsoryFiguresTest < ApplicationSystemTestCase
  setup do
    @compulsory_figure = compulsory_figures(:one)
  end

  test "visiting the index" do
    visit compulsory_figures_url
    assert_selector "h1", text: "Compulsory Figures"
  end

  test "creating a Compulsory figure" do
    visit compulsory_figures_url
    click_on "New Compulsory Figure"

    fill_in "Description", with: @compulsory_figure.description
    click_on "Create Compulsory figure"

    assert_text "Compulsory figure was successfully created"
    click_on "Back"
  end

  test "updating a Compulsory figure" do
    visit compulsory_figures_url
    click_on "Edit", match: :first

    fill_in "Description", with: @compulsory_figure.description
    click_on "Update Compulsory figure"

    assert_text "Compulsory figure was successfully updated"
    click_on "Back"
  end

  test "destroying a Compulsory figure" do
    visit compulsory_figures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compulsory figure was successfully destroyed"
  end
end
