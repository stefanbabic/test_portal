require 'test_helper'

class SiteLayoutTestTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_response :success
    assert_select 'h1', "Welcome to Test Portal"
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", contact_path
  end

end
