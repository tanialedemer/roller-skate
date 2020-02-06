require 'test_helper'

class FreeSkatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @free_skate = free_skates(:one)
  end

  test "should get index" do
    get free_skates_url
    assert_response :success
  end

  test "should get new" do
    get new_free_skate_url
    assert_response :success
  end

  test "should create free_skate" do
    assert_difference('FreeSkate.count') do
      post free_skates_url, params: { free_skate: { description: @free_skate.description } }
    end

    assert_redirected_to free_skate_url(FreeSkate.last)
  end

  test "should show free_skate" do
    get free_skate_url(@free_skate)
    assert_response :success
  end

  test "should get edit" do
    get edit_free_skate_url(@free_skate)
    assert_response :success
  end

  test "should update free_skate" do
    patch free_skate_url(@free_skate), params: { free_skate: { description: @free_skate.description } }
    assert_redirected_to free_skate_url(@free_skate)
  end

  test "should destroy free_skate" do
    assert_difference('FreeSkate.count', -1) do
      delete free_skate_url(@free_skate)
    end

    assert_redirected_to free_skates_url
  end
end
