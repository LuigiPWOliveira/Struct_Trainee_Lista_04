class Language < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  belongs_to :teacher
end
