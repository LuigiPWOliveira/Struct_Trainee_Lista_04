class Student < ApplicationRecord
  belongs_to :teacher
  validates :name, :email, :birth, :registration, presence: true
  validates :registration, :email, uniqueness: true
  validates_length_of :registration, is: 9
  validates :registration, numericality: {only_integer: true }
  validates_date :birth, before: lambda{ Date.current}

end
