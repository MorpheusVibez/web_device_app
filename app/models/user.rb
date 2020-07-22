class User < ApplicationRecord
    has_secure_password
    validates :username, presence: :true
    validates :username, uniqueness: :true
    
    has_many :devices
    has_many :apps, through: :devices

    def devices
        
    end
end
