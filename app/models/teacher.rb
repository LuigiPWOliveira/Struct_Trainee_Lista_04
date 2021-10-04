class Teacher < ApplicationRecord
  has_many :students
  has_one :language, dependent: :destroy

  validates :name, :email, :birth, presence: true
  validates :email, uniqueness: true
  validates_date :birth, before: lambda{ Date.current}

end
