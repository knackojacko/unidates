class User < ApplicationRecord
    attr_accessor :remember_token, :activation_token, :reset_token
    before_create :confirmation_token
    attr_accessor :remember_token    
    VALID_EMAIL_REGEX = /\As\d{7}@student\.rmit\.edu\.au\z/i
    has_many :questionnaire
    has_many :report
    has_many :like
    has_many :matche

    has_attached_file :avatar, styles: {
      square: '122x122#',
      icon: '23x23#'
    }
    serialize :liked_users
    has_secure_password
    before_save {self.email = email.downcase}
    validates :name, presence: true
    validates :email, presence: true, uniqueness: {case_sensitive: false}
    validates :dob, presence: true
    validates :gender, presence: true
    validates :preference, presence: true

    # Updated validation to skip password validation on update (as there is no password to validate)
    validates :password, presence: true, confirmation: true, length: {in: 8..35}, on: :create
    validates :password, length: {in: 8..35}, on: :update, allow_blank: true
    validates :password_confirmation, presence: true, on: :create
    validates :password_confirmation, presence: true, on: :update, allow_blank: true
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  
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
    
    def authenticated?(attribute, token)
      digest = send("#{attribute}_digest")
      return false if digest.nil?
      BCrypt::Password.new(digest).is_password?(token)
    end
  

    def remember
      self.remember_token = User.new_token
      update_attribute(:remember_digest, User.digest(remember_token))
    end
    
    # Forgets a user.
    def forget
        update_attribute(:remember_digest, nil)
    end

    def email_activate
      self.email_confirmed = true
      self.confirm_token = nil
      save!(:validate => false)
    end

  # Sets the password reset attributes.
  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest,  User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  # Sends password reset email.
  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  # Returns true if a password reset has expired.
  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end

    private
      
      def confirmation_token
        if self.confirm_token.blank?
          self.confirm_token = SecureRandom.urlsafe_base64.to_s
        end
      end
end
