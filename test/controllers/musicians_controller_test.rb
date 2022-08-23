require "test_helper"

class MusiciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musician = musicians(:one)
  end

  test "should get index" do
    get musicians_url, as: :json
    assert_response :success
  end

  test "should create musician" do
    assert_difference("Musician.count") do
      post musicians_url, params: { musician: { bio: @musician.bio, email: @musician.email, first_name: @musician.first_name, instrument: @musician.instrument, last_name: @musician.last_name, location: @musician.location, media_url1: @musician.media_url1, media_url2: @musician.media_url2, password_digest: @musician.password_digest } }, as: :json
    end

    assert_response :created
  end

  test "should show musician" do
    get musician_url(@musician), as: :json
    assert_response :success
  end

  test "should update musician" do
    patch musician_url(@musician), params: { musician: { bio: @musician.bio, email: @musician.email, first_name: @musician.first_name, instrument: @musician.instrument, last_name: @musician.last_name, location: @musician.location, media_url1: @musician.media_url1, media_url2: @musician.media_url2, password_digest: @musician.password_digest } }, as: :json
    assert_response :success
  end

  test "should destroy musician" do
    assert_difference("Musician.count", -1) do
      delete musician_url(@musician), as: :json
    end

    assert_response :no_content
  end
end
