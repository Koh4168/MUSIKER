class Grooping < ApplicationRecord
    has_many :events, through: :events_groopings
    has_many :events_groopings,dependent: :destroy
end
