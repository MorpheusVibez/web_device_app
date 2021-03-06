class User < ApplicationRecord
    has_secure_password
    validates :username, presence: :true
    validates :username, uniqueness: :true
    
    has_many :devices
    has_many :apps, {through: :devices, :source=>"app"}
    accepts_nested_attributes_for :devices

end
