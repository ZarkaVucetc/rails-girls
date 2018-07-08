require "application_system_test_case"

class DonutsTest < ApplicationSystemTestCase
  setup do
    @donut = donuts(:one)
  end

  test "visiting the index" do
    visit donuts_url
    assert_selector "h1", text: "Donuts"
  end

  test "creating a Donut" do
    visit donuts_url
    click_on "New Donut"

    fill_in "Description", with: @donut.description
    fill_in "Name", with: @donut.name
    fill_in "Picture Url", with: @donut.picture_url
    click_on "Create Donut"

    assert_text "Donut was successfully created"
    click_on "Back"
  end

  test "updating a Donut" do
    visit donuts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @donut.description
    fill_in "Name", with: @donut.name
    fill_in "Picture Url", with: @donut.picture_url
    click_on "Update Donut"

    assert_text "Donut was successfully updated"
    click_on "Back"
  end

  test "destroying a Donut" do
    visit donuts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Donut was successfully destroyed"
  end
end
