class Customer < ApplicationController
    has_many :appointments
    has_many :mechanics, through: appointments
end