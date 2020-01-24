class Dog < ApplicationRecord
    validates :name, presence: true
    validates :size, presence: true
    validates :age, presence: true
    validates :enjoys, presence: true
end
