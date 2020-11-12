require 'test_helper'

class AppealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appeals_index_url
    assert_response :success
  end

end
