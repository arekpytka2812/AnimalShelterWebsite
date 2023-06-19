class Shelter < ApplicationRecord
    has_many :cages
    has_many :application_forms
end
