class Kid < ApplicationRecord
    validates :age, presence: true, numericality: true, inclusion: { in: 6..15 }
    validates :username, presence: true, uniqueness: true, length: { within: 7..20 }
end
