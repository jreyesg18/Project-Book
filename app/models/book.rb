class Book < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :reviews

  has_attached_file :book_img, :styles =>{ :book_index=> "250x350>", :book_show =>"325x475>"}, :default_url =>"/images/:style/missing.png"
  validates_attachment_content_type :book_img, :content_type => /\Aimage\/.*\Z/

  has_attached_file :book_pdf, styles: {thumbnail: "60x60#"}
  validates_attachment_content_type :book_pdf, content_type: ["application/pdf" ]

  validates :titulo, length: { in: 8..1000 , message: "Debe tener entre 5 y 500 caracteres"}
  validates :descripcion, length: { in: 0..1000 , message: "Debe tener entre 0 y 1000 caracteres"}
  validates :autor, length: { in: 8..100 , message: "Debe tener entre 5 y 20 caracteres"}
  validates :category_id, presence: true
  validates :book_img, attachment_presence: true
  validates :book_pdf, attachment_presence: true

end
