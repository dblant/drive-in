class Appointment < ApplicationController
    belongs_to :customer
    has_many :customers, through: :mechanics
end