require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "should have a name" do
    @user.name = ""
    assert_not @user.valid?

    @user.name = "      "
    assert_not @user.valid?
  end
end
