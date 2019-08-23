require 'test_helper'

class BimbingansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bimbingan = bimbingans(:one)
  end

  test "should get index" do
    get bimbingans_url
    assert_response :success
  end

  test "should get new" do
    get new_bimbingan_url
    assert_response :success
  end

  test "should create bimbingan" do
    assert_difference('Bimbingan.count') do
      post bimbingans_url, params: { bimbingan: { dosen: @bimbingan.dosen, judul: @bimbingan.judul, nama: @bimbingan.nama } }
    end

    assert_redirected_to bimbingan_url(Bimbingan.last)
  end

  test "should show bimbingan" do
    get bimbingan_url(@bimbingan)
    assert_response :success
  end

  test "should get edit" do
    get edit_bimbingan_url(@bimbingan)
    assert_response :success
  end

  test "should update bimbingan" do
    patch bimbingan_url(@bimbingan), params: { bimbingan: { dosen: @bimbingan.dosen, judul: @bimbingan.judul, nama: @bimbingan.nama } }
    assert_redirected_to bimbingan_url(@bimbingan)
  end

  test "should destroy bimbingan" do
    assert_difference('Bimbingan.count', -1) do
      delete bimbingan_url(@bimbingan)
    end

    assert_redirected_to bimbingans_url
  end
end
