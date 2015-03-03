require 'test_helper'

class ListDiningHallsTestTest < ActionDispatch::IntegrationTest
  #setup { host! 'api.example.com' }

  test 'returns list of dining halls' do 
    get '/dining_centers'
    assert_equal 200, response.status
    refute_empty response.body
  end
end
