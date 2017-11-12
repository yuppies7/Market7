class Content < ApplicationRecord
  belongs_to :user

  has_attached_file :cover#, styles: { medium: "300x>", thumb: "100x>" }
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/,
  message: "Solo le immagini sono supportate"

  has_attached_file :allegato
  validates_attachment_content_type :allegato, :content_type => [ /^image\/(png|gif|jpeg)/,'application/pdf'],
  message: "Formato non supportato"

  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :cover, attachment_presence: true
  validates :allegato, attachment_presence: true

end
