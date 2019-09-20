require "application_system_test_case"

class FilemhsTest < ApplicationSystemTestCase
  setup do
    @filemh = filemhs(:one)
  end

  test "visiting the index" do
    visit filemhs_url
    assert_selector "h1", text: "Filemhs"
  end

  test "creating a Filemh" do
    visit filemhs_url
    click_on "New Filemh"

    fill_in "Id bimbingan", with: @filemh.id_bimbingan
    fill_in "Judul", with: @filemh.judul
    fill_in "Nama", with: @filemh.nama
    fill_in "Nim", with: @filemh.nim
    click_on "Create Filemh"

    assert_text "Filemh was successfully created"
    click_on "Back"
  end

  test "updating a Filemh" do
    visit filemhs_url
    click_on "Edit", match: :first

    fill_in "Id bimbingan", with: @filemh.id_bimbingan
    fill_in "Judul", with: @filemh.judul
    fill_in "Nama", with: @filemh.nama
    fill_in "Nim", with: @filemh.nim
    click_on "Update Filemh"

    assert_text "Filemh was successfully updated"
    click_on "Back"
  end

  test "destroying a Filemh" do
    visit filemhs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Filemh was successfully destroyed"
  end
end
