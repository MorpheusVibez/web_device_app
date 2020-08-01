class App < ApplicationRecord
    has_many :devices
    has_many :users, through: :devices

    validates :name, presence: :true
    validates :description, presence: :true
    validates :category, presence: :true
    validates :storage_size_in_MB, presence: :true

    accepts_nested_attributes_for :devices

    def self.social_media
        # Correct scope method
        where(:category => 'Social Media')
    end

end
