class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city

  has_many :join_table_doctor_specialities
    has_many :specialities, through: :join_table_doctor_specialities

end
