class Recipe < ActiveRecord::Base
  belongs_to :dishtype;

  validates :name, presence: true, length: { maximum: 100 }, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :dishtype_id, presence: true
  validates :number_of_persons, presence: true, numericality: { :greater_than_or_equal_to => 1 }
  validates :preparation_time, presence: true, numericality: { :greater_than_or_equal_to => 0 }
  validates :waiting_time, presence: true, numericality: { :greater_than_or_equal_to => 0 }
  validates :cooking_time, presence: true, numericality: { :greater_than_or_equal_to => 0 }



end
