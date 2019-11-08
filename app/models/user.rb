class User < ApplicationRecord
    has_secure_password
  
    validates :pseudo, presence: true
    validates :password, presence: true, length: { minimum: 6 }
    validates :code, presence: true
    validates :character, presence: true
  
    has_many :bestiaries
    has_many :herbaria
  
  
    def wrong_user
      if self.errors.any? 
        self.errors.full_messages.each do |message|
          puts message
          return message
        end
      end
    end
end
