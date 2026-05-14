class Comment < ApplicationRecord
  belongs_to :post

  validates :name, presence: true
  validates :body, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
end
