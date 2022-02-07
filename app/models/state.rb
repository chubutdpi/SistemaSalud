class State < ApplicationRecord
    has_many :covid_cases

    def to_s
        name
    end
end
