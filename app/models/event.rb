class Event < ApplicationRecord
    belongs_to :user
    mount_uploader :image, ImageUploader
    validates :image,:name,:place,:text,:link,:scedule, presence: true
end 


