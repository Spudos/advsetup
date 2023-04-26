class Category < ApplicationRecord
    has_many :setup_categories
    has_many :setups, through: :setup_categories

    validates :name, presence: true, length: {minimum: 3, maximum: 25}
    validates_uniqueness_of :name

end