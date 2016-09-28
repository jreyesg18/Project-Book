class Category < ActiveRecord::Base
  has_many :books

  validates :name, length: { in: 1..30 , message: "debe tener entre 1 y 30 caracteres"}

end
