class App < ApplicationRecord
    has_many :devices
    has_many :users, through: :devices

    validates :name, presence: :true
    validates :description, presence: :true
    validates :category, presence: :true
    
    # scope :social_media, -> { where(category: "Social Media") }
    validates :storage_size, presence: :true

    def social_media
        where(:category => 'Social Media')
    end

end
