class Skill < ApplicationRecord
    has_many :seeker_skills
    has_many :seekers, through: :seeker_skills
    validates :name, presence: true, uniqueness: true
end
