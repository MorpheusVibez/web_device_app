class Device < ApplicationRecord
    belongs_to :user, optional: :true
    has_many :apps

    belongs_to :app, optional: :true

    validates :name, presence: :true
    validates :storage_size, presence: :true
    validates :color, presence: :true
    
end
