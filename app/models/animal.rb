class Animal < ApplicationRecord
  belongs_to :species
  has_many :application_forms
end
