class Doctor < ApplicationRecord
    has_many :appointments, dependent: :destroy, foreign_key: 'doctor_id'

    validates :fullname, presence: true
    validates :specialization, presence: true
    validates :profile_picture, presence: true
end
