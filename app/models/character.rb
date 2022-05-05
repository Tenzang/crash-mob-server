class Character < ApplicationRecord
    has_one :score
    belongs_to :user, :optional => true
    has_and_belongs_to_many :skills
    has_and_belongs_to_many :abilities, :optional => true
    belongs_to :currency, :optional => true
end
