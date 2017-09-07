class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\As\d{7}@student\.rmit\.edu\.au\z/i
    has_many :questionnaire
    has_many :report
    has_secure_password
    before_save {self.email = email.downcase}
    validates :name, presence: true
    validates :email, presence: true, uniqueness: {case_sensitive: false}
    validates :dob, presence: true
    validates :gender, presence: true
    validates :preference, presence: true
    validates :password, presence: true, confirmation: true, length: {in: 8..35}
    validates :password_confirmation, presence: true

  

    
    # Returns the hash digest of the given string.
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
 
 
end
