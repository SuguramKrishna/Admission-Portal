# frozen_string_literal: true

require 'test_helper'

class FamilyDetailsControllerTest < ActionDispatch::IntegrationTest
  test 'should get family' do
    get family_details_family_url
    assert_response :success
  end
end
