require 'test_helper'

class PolaroidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polaroid = polaroids(:one)
  end

  test "should get index" do
    get polaroids_url
    assert_response :success
  end

  test "should get new" do
    get new_polaroid_url
    assert_response :success
  end

  test "should create polaroid" do
    assert_difference('Polaroid.count') do
      post polaroids_url, params: { polaroid: { caption: @polaroid.caption, image: @polaroid.image } }
    end

    assert_redirected_to polaroid_url(Polaroid.last)
  end

  test "should show polaroid" do
    get polaroid_url(@polaroid)
    assert_response :success
  end

  test "should get edit" do
    get edit_polaroid_url(@polaroid)
    assert_response :success
  end

  test "should update polaroid" do
    patch polaroid_url(@polaroid), params: { polaroid: { caption: @polaroid.caption, image: @polaroid.image } }
    assert_redirected_to polaroid_url(@polaroid)
  end

  test "should destroy polaroid" do
    assert_difference('Polaroid.count', -1) do
      delete polaroid_url(@polaroid)
    end

    assert_redirected_to polaroids_url
  end
end
