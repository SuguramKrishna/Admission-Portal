# frozen_string_literal: true

require 'test_helper'

class BasicDetailsControllerTest < ActionDispatch::IntegrationTest
  test 'should get basic_detail' do
    get basic_details_basic_detail_url
    assert_response :success
  end
end
