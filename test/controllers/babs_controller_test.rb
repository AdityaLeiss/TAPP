require 'test_helper'

class BabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bab = babs(:one)
  end

  test "should get index" do
    get babs_url
    assert_response :success
  end

  test "should get new" do
    get new_bab_url
    assert_response :success
  end

  test "should create bab" do
    assert_difference('Bab.count') do
      post babs_url, params: { bab: { bab: @bab.bab, nama: @bab.nama, nim: @bab.nim } }
    end

    assert_redirected_to bab_url(Bab.last)
  end

  test "should show bab" do
    get bab_url(@bab)
    assert_response :success
  end

  test "should get edit" do
    get edit_bab_url(@bab)
    assert_response :success
  end

  test "should update bab" do
    patch bab_url(@bab), params: { bab: { bab: @bab.bab, nama: @bab.nama, nim: @bab.nim } }
    assert_redirected_to bab_url(@bab)
  end

  test "should destroy bab" do
    assert_difference('Bab.count', -1) do
      delete bab_url(@bab)
    end

    assert_redirected_to babs_url
  end
end
