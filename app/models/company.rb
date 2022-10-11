class Company < ApplicationRecord
    belongs_to :genre
    has_many :interviews
    has_many :seekers, through: :interviews
    validates :name, presence: true, uniqueness: true
end
