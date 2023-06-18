class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :username, :body,  presence: true
  validates :body, length: {maximum:10000}
end
