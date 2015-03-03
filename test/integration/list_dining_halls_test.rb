require 'test_helper'

class ListDiningHallsTestTest < ActionDispatch::IntegrationTest
  #setup { host! 'api.example.com' }

  test 'returns list of dining halls' do 
    get '/dining_centers'
    assert_equal 200, response.status
    refute_empty response.body
  end

  test 'return specific dining hall' do
    center = DiningCenter.create!(name: "D2")
    get '/dining_centers', { name: 'D2' }
    assert_equal 200, response.status
    refute_empty response.body
    hall = json(response.body)
    assert_equal center.name, hall[:name]
  end
end
