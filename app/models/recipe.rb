class Recipe < ActiveRecord::Base
  belongs_to :dishtype;

  validates :name, presence: true, length: { maximum: 100 }, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :dishtype_id, presence: true

end
