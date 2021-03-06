require 'test_helper'

class FillLayoutTest < ActionDispatch::IntegrationTest

  test 'valid links' do
    get root_path
    assert_template 'static_pages/home'
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', help_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
    assert_select 'a[href=?]', signup_path

    get signup_path
    assert_select 'title', full_title('User Signup')
  end

end

