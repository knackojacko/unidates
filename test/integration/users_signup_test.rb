require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name:  "ExampleUser",
                                         email: "s3555241@student.rmit.edu.au",gender: "Male",preference: "Female", dob:"1994-09-01",
                                         password:"123456789",
                                         password_confirmation: "123456789" } }
    end
    assert_template 'users/new'
    assert_select 'div#<CSS id for error explanation>'
    assert_select 'div.<CSS class for field with error>'
  end
  
  
  
  
end
