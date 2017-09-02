require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "ExampleUser",
                                         email: "s3555241@student.rmit.edu.au",gender: "Man",preference: "Woman", dob:"1994-09-01",
                                         password:"123456789",
                                         password_confirmation: "123456789" } }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name:  "ExampleUserIs",
                                         email: "s3555234@student.rmit.edu.au",gender: "Man",preference: "Woman", dob:"1996-07-05",
                                         password: "12345678910",
                                         password_confirmation: "12345678910" } }
    end
    follow_redirect!
    assert_template 'new_user_email_mailer/notify_user'
    assert is_logged_in?
  end
  
  
  
end
