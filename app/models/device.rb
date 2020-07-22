class Device < ApplicationRecord
    belongs_to :user, optional: :true
    # has_many :apps, {through: :devices, :source => 'app'}

    belongs_to :app, optional: :true

    validates :name, presence: :true
    validates :storage_size_in_GB, presence: :true
    validates :color, presence: :true
    
end
