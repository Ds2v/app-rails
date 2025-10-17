require "test_helper"

class RsocialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rsocial = rsocials(:one)
  end

  test "should get index" do
    get rsocials_url
    assert_response :success
  end

  test "should get new" do
    get new_rsocial_url
    assert_response :success
  end

  test "should create rsocial" do
    assert_difference("Rsocial.count") do
      post rsocials_url, params: { rsocial: { color: @rsocial.color, title: @rsocial.title } }
    end

    assert_redirected_to rsocial_url(Rsocial.last)
  end

  test "should show rsocial" do
    get rsocial_url(@rsocial)
    assert_response :success
  end

  test "should get edit" do
    get edit_rsocial_url(@rsocial)
    assert_response :success
  end

  test "should update rsocial" do
    patch rsocial_url(@rsocial), params: { rsocial: { color: @rsocial.color, title: @rsocial.title } }
    assert_redirected_to rsocial_url(@rsocial)
  end

  test "should destroy rsocial" do
    assert_difference("Rsocial.count", -1) do
      delete rsocial_url(@rsocial)
    end

    assert_redirected_to rsocials_url
  end
end
