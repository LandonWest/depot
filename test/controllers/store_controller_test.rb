require 'test_helper'
#these tests are based off the fixture data we entered in test/fixtures/products.yml
class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 2
    assert_select 'h3', 'M1911'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
