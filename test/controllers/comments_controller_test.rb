require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

  test 'should get comments index' do
    get :index
    assert_response :success

  end
end
