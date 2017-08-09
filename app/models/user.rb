class User < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :name, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true

    
    # Returns the hash digest of the given string.
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
end

