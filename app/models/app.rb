class App < ApplicationRecord
    belongs_to :devices, optional: :true
    belongs_to :users, optional: :true

    validates :name, presence: :true
    validates :description, presence: :true
    validates :category, presence: :true
    validates :storage_size, presence: :true
end
