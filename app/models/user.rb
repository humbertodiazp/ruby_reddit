class User < ApplicationRecord
    validates :username, presence: true
    validates :username, length: {minimum:8, maximum:20}

end
