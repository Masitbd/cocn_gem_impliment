class Cashmaster < ApplicationRecord
    has_many :cashdetails, dependent: :destroy
    accepts_nested_attributes_for :cashdetails, reject_if: :all_blank, allow_destroy: true
end
