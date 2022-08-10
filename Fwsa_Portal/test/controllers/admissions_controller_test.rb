# frozen_string_literal: true

require 'test_helper'

class AdmissionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get admissions_index_url
    assert_response :success
  end
end
