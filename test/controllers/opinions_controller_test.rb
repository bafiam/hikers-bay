require 'test_helper'

class OpinionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get opinions_index_url
    assert_response :success
  end

  test "should get create" do
    get opinions_create_url
    assert_response :success
  end

  test "should get new" do
    get opinions_new_url
    assert_response :success
  end

end
