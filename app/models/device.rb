class Device < ApplicationRecord
    belongs_to :users, optional: :true
    has_many :apps, through: :users

    validates :name, presence :true
    validates :storage_size, presence :true
    validates :color, presence :true
    
end
