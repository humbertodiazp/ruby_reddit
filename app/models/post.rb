class Post < ApplicationRecord
    belongs_to :user 
    has_many :comments
    validates :title, :body, presence: true  
    validates :title, length: {minimum: 1, maximum: 300}
    validates :body, length: {maximum:40000}
end
