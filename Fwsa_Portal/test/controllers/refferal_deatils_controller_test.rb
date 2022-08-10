# frozen_string_literal: true

require 'test_helper'

class RefferalDeatilsControllerTest < ActionDispatch::IntegrationTest
  test 'should get refferal' do
    get refferal_deatils_refferal_url
    assert_response :success
  end
end
