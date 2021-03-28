class User < ApplicationRecord
    has_secure_password
    has_many :messages

     validates :username, presence: true, length: {minimum:3, maximum:20}, uniqueness: {case_sensitive: false}
     
  
end
