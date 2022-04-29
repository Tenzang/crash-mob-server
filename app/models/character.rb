class Character < ApplicationRecord
    has_one :score, :optional true
end
