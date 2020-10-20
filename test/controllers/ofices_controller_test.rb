require 'test_helper'

class OficesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get ofices_index_url
    assert_response :success
  end
end
