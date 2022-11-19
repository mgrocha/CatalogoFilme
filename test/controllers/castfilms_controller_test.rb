require "test_helper"

class CastfilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @castfilm = castfilms(:one)
  end

  test "should get index" do
    get castfilms_url
    assert_response :success
  end

  test "should get new" do
    get new_castfilm_url
    assert_response :success
  end

  test "should create castfilm" do
    assert_difference("Castfilm.count") do
      post castfilms_url, params: { castfilm: { author_id: @castfilm.author_id, film_id: @castfilm.film_id } }
    end

    assert_redirected_to castfilm_url(Castfilm.last)
  end

  test "should show castfilm" do
    get castfilm_url(@castfilm)
    assert_response :success
  end

  test "should get edit" do
    get edit_castfilm_url(@castfilm)
    assert_response :success
  end

  test "should update castfilm" do
    patch castfilm_url(@castfilm), params: { castfilm: { author_id: @castfilm.author_id, film_id: @castfilm.film_id } }
    assert_redirected_to castfilm_url(@castfilm)
  end

  test "should destroy castfilm" do
    assert_difference("Castfilm.count", -1) do
      delete castfilm_url(@castfilm)
    end

    assert_redirected_to castfilms_url
  end
end
