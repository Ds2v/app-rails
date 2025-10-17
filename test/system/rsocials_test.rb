require "application_system_test_case"

class RsocialsTest < ApplicationSystemTestCase
  setup do
    @rsocial = rsocials(:one)
  end

  test "visiting the index" do
    visit rsocials_url
    assert_selector "h1", text: "Rsocials"
  end

  test "should create rsocial" do
    visit rsocials_url
    click_on "New rsocial"

    fill_in "Color", with: @rsocial.color
    fill_in "Title", with: @rsocial.title
    click_on "Create Rsocial"

    assert_text "Rsocial was successfully created"
    click_on "Back"
  end

  test "should update Rsocial" do
    visit rsocial_url(@rsocial)
    click_on "Edit this rsocial", match: :first

    fill_in "Color", with: @rsocial.color
    fill_in "Title", with: @rsocial.title
    click_on "Update Rsocial"

    assert_text "Rsocial was successfully updated"
    click_on "Back"
  end

  test "should destroy Rsocial" do
    visit rsocial_url(@rsocial)
    click_on "Destroy this rsocial", match: :first

    assert_text "Rsocial was successfully destroyed"
  end
end
