class Character < ApplicationRecord
    has_one :score
    belongs_to :user, :optional => true
end
