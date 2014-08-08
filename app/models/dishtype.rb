class Dishtype < ActiveRecord::Base
  has_many :recipes;

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
end
