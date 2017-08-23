require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = User.new(name: "example", email: "s2223331@student.rmit.edu.au", gender: "Man", 
    preference: "Women", dob: "1999-09-01", password: "12345678", password_confirmation: "12345678"  )
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name = "example"
    assert @user.valid?
  end  
  
  test "email should be present" do
    @user.email = "s1112221@student.rmit.edu.au"
    assert @user.valid?
  end
  
      test "dob should be present" do
    @user.dob = "1999-09-01"
    assert @user.valid?
  end
  
    test "gender should be present" do
    @user.gender = "Man"
    assert @user.valid?
  end
  
    test "preference should be present" do
    @user.preference = "Women"
    assert @user.valid?
  end
  
    test "password should be present" do
    @user.password = "12345678"
    assert @user.valid?
  end
  
    test "password_confirmation should be present" do
    @user.password_confirmation = "12345678"
    assert @user.valid?
  end
  

    test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  
    test "email addresses should be saved as lower-case" do
    mixed_case_email = "s1112223@student.rmit.edu.au"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end
  

  test "password should have a minimum length" do
    @user.password = "a" * 8
    assert_not @user.valid?
  end
  
  
end
