require "application_system_test_case"

class StartBootstrapsTest < ApplicationSystemTestCase
  setup do
    @start_bootstrap = start_bootstraps(:one)
  end

  test "visiting the index" do
    visit start_bootstraps_url
    assert_selector "h1", text: "Start Bootstraps"
  end

  test "creating a Start bootstrap" do
    visit start_bootstraps_url
    click_on "New Start Bootstrap"

    click_on "Create Start bootstrap"

    assert_text "Start bootstrap was successfully created"
    click_on "Back"
  end

  test "updating a Start bootstrap" do
    visit start_bootstraps_url
    click_on "Edit", match: :first

    click_on "Update Start bootstrap"

    assert_text "Start bootstrap was successfully updated"
    click_on "Back"
  end

  test "destroying a Start bootstrap" do
    visit start_bootstraps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Start bootstrap was successfully destroyed"
  end
end
