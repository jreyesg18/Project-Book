class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :rating, :numericality => {:only_integer => true, :message => "Debe ser numero"}


end
