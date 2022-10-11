class Seeker < ApplicationRecord
    has_many :seeker_skills
    has_many :skills, through: :seeker_skills
    has_many :interviews
    has_many :companies, through: :interviews
    
    # accepts_nested_attributes_for :skills

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :age, presence: true, numericality: { greater_than_or_equal_to: 18}, numericality: { less_than_or_equal_to: 70 }

    def to_s
        self.first_name + " " + self.last_name
    end

    def skill_attributes=(skill)
        self.skill = Skill.find_or_create_by(name: skill[:name])
        self.skill.update(skill)
    end
end
