# frozen_string_literal: true

require 'test_helper'

class EducationalDetailsControllerTest < ActionDispatch::IntegrationTest
  test 'should get education' do
    get educational_details_education_url
    assert_response :success
  end
end
