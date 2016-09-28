class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :rating, :numericality => {:only_integer => true, :message => "Debe ser numero"}
  validates :comentario, length: { in: 5..100 , message: "Debe tener entre 5 y 20 caracteres"}

end
