class Event < ApplicationRecord
    belongs_to :user
    has_many :groopings, through: :event_groopings
    has_many :event_groopings, dependent: :destroy
    mount_uploader :image, ImageUploader
    validates :image,:name,:place,:text,:link,:scedule, presence: true
    
    def save_groopings(tags)
        curent_tags = self.groopings.pluck(:name) unless self.groopings.nil?
        old_tags = current_tags-tags
        new_tags = tags - current_tags
    end 
end 


