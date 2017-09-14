class User < ApplicationRecord
    attr_accessor :remember_token    
    VALID_EMAIL_REGEX = /\As\d{7}@student\.rmit\.edu\.au\z/i
    has_many :questionnaire
    has_many :report
    has_many :match_or_like
    serialize :liked_users
    has_secure_password
    before_save {self.email = email.downcase}
    validates :name, presence: true
    validates :email, presence: true, uniqueness: {case_sensitive: false}
    validates :dob, presence: true
    validates :gender, presence: true
    validates :preference, presence: true
    validates :password, presence: true, confirmation: true, length: {in: 8..35}
    validates :password_confirmation, presence: true

  class << self
    # Returns the hash digest of the given string.
    def digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end

    # Returns a random token.
    def new_token
      SecureRandom.urlsafe_base64
    end
  end
    
    # Returns a random token.
    def User.new_token
        SecureRandom.urlsafe_base64
    end

    def self.new_token
        SecureRandom.urlsafe_base64
    end
    
    def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end

    def remember
      self.remember_token = User.new_token
      update_attribute(:remember_digest, User.digest(remember_token))
    end
     # Forgets a user.
    def forget
        update_attribute(:remember_digest, nil)
    end
    
end
