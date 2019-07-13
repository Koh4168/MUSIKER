class Event < ApplicationRecord
    belongs_to :user
    has_many :groopings, through: :event_groopings
    has_many :event_groopings, dependent: :destroy
    mount_uploader :image, ImageUploader
    validates :image,:name,:place,:text,:link,:scedule, presence: true
end 


