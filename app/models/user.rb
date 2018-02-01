class User < ApplicationRecord
  has_many :pins, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :comment, :through => :pin
#Un utilisateur ne peut avoir qu'un seul commentaire par pin
  validates :username, presence: true,
                       length: { minimum: 1}
#on s'assure que l'utilisateur a bien un nom et que celui-ci fait au moins un caratère
end
