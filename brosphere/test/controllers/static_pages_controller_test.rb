require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get brhome" do
    get :brhome
    assert_response :success
    assert_select "title", "BrHome@Brosphere"
  end

  test "should get brhelp" do
    get :brhelp
    assert_response :success
    assert_select "title", "BrHelp@Brosphere"
  end

  test "should get brabout" do
    get :brabout
    assert_response :success
    assert_select "title", "AboutBros@Brosphere"
  end
end
