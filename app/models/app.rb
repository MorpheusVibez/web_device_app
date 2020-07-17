class App < ApplicationRecord
    belongs_to :devices, optional: :true
    belongs_to :users, optional: :true

    validates :name, presence: :true
    validates :description, presence: :true
    validates :category, presence: :true
    
    # scope :social_media, -> { where(category: "Social Media") }
    validates :storage_size, presence: :true

    def self.social_media
        where(:category => 'Social Media')
      end
end
