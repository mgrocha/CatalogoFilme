require "application_system_test_case"

class CastfilmsTest < ApplicationSystemTestCase
  setup do
    @castfilm = castfilms(:one)
  end

  test "visiting the index" do
    visit castfilms_url
    assert_selector "h1", text: "Castfilms"
  end

  test "should create castfilm" do
    visit castfilms_url
    click_on "New castfilm"

    fill_in "Author", with: @castfilm.author_id
    fill_in "Film", with: @castfilm.film_id
    click_on "Create Castfilm"

    assert_text "Castfilm was successfully created"
    click_on "Back"
  end

  test "should update Castfilm" do
    visit castfilm_url(@castfilm)
    click_on "Edit this castfilm", match: :first

    fill_in "Author", with: @castfilm.author_id
    fill_in "Film", with: @castfilm.film_id
    click_on "Update Castfilm"

    assert_text "Castfilm was successfully updated"
    click_on "Back"
  end

  test "should destroy Castfilm" do
    visit castfilm_url(@castfilm)
    click_on "Destroy this castfilm", match: :first

    assert_text "Castfilm was successfully destroyed"
  end
end
