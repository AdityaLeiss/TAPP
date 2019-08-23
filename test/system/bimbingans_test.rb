require "application_system_test_case"

class BimbingansTest < ApplicationSystemTestCase
  setup do
    @bimbingan = bimbingans(:one)
  end

  test "visiting the index" do
    visit bimbingans_url
    assert_selector "h1", text: "Bimbingans"
  end

  test "creating a Bimbingan" do
    visit bimbingans_url
    click_on "New Bimbingan"

    fill_in "Dosen", with: @bimbingan.dosen
    fill_in "Judul", with: @bimbingan.judul
    fill_in "Nama", with: @bimbingan.nama
    click_on "Create Bimbingan"

    assert_text "Bimbingan was successfully created"
    click_on "Back"
  end

  test "updating a Bimbingan" do
    visit bimbingans_url
    click_on "Edit", match: :first

    fill_in "Dosen", with: @bimbingan.dosen
    fill_in "Judul", with: @bimbingan.judul
    fill_in "Nama", with: @bimbingan.nama
    click_on "Update Bimbingan"

    assert_text "Bimbingan was successfully updated"
    click_on "Back"
  end

  test "destroying a Bimbingan" do
    visit bimbingans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bimbingan was successfully destroyed"
  end
end
