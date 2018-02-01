class Pin < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  url_regex = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
              #notre pin est un url, on doit donc s'en assurer et pour ça on se sert du regex URL
  validates :url, presence: true,
                  format: {with: url_regex}
end
