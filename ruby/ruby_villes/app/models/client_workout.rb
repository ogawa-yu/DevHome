class ClientWorkout < ApplicationRecord
    validates :client_name, presence: true
    validates :tainer, presence: true
    validates :paid_amount, numericality: { message: "please input only numeric as daller."}
end
