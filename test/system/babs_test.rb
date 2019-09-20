require "application_system_test_case"

class BabsTest < ApplicationSystemTestCase
  setup do
    @bab = babs(:one)
  end

  test "visiting the index" do
    visit babs_url
    assert_selector "h1", text: "Babs"
  end

  test "creating a Bab" do
    visit babs_url
    click_on "New Bab"

    fill_in "Bab", with: @bab.bab
    fill_in "Nama", with: @bab.nama
    fill_in "Nim", with: @bab.nim
    click_on "Create Bab"

    assert_text "Bab was successfully created"
    click_on "Back"
  end

  test "updating a Bab" do
    visit babs_url
    click_on "Edit", match: :first

    fill_in "Bab", with: @bab.bab
    fill_in "Nama", with: @bab.nama
    fill_in "Nim", with: @bab.nim
    click_on "Update Bab"

    assert_text "Bab was successfully updated"
    click_on "Back"
  end

  test "destroying a Bab" do
    visit babs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bab was successfully destroyed"
  end
end
