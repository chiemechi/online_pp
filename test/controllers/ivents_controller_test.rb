require 'test_helper'

class IventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ivents_index_url
    assert_response :success
  end

end
