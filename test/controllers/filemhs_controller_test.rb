require 'test_helper'

class FilemhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filemh = filemhs(:one)
  end

  test "should get index" do
    get filemhs_url
    assert_response :success
  end

  test "should get new" do
    get new_filemh_url
    assert_response :success
  end

  test "should create filemh" do
    assert_difference('Filemh.count') do
      post filemhs_url, params: { filemh: { id_bimbingan: @filemh.id_bimbingan, judul: @filemh.judul, nama: @filemh.nama, nim: @filemh.nim } }
    end

    assert_redirected_to filemh_url(Filemh.last)
  end

  test "should show filemh" do
    get filemh_url(@filemh)
    assert_response :success
  end

  test "should get edit" do
    get edit_filemh_url(@filemh)
    assert_response :success
  end

  test "should update filemh" do
    patch filemh_url(@filemh), params: { filemh: { id_bimbingan: @filemh.id_bimbingan, judul: @filemh.judul, nama: @filemh.nama, nim: @filemh.nim } }
    assert_redirected_to filemh_url(@filemh)
  end

  test "should destroy filemh" do
    assert_difference('Filemh.count', -1) do
      delete filemh_url(@filemh)
    end

    assert_redirected_to filemhs_url
  end
end
