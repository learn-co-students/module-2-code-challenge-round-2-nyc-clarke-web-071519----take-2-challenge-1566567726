class Guest < ApplicationRecord
    has_many :episodes, through: :appearences
    has_many :appearences
end
