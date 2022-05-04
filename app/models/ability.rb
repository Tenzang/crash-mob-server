class Ability < ApplicationRecord
    has_and_belongs_to_many :characters, :optional => true
end
