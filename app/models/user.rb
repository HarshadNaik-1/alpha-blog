class User < ApplicationRecord
    has_many :articles
    validates :username, presence: true, uniqueness: {case_sensitive: false}, 
    length: {minimum: 3, maximum: 25}

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true,uniqueness: {case_sensitive: false}, 
    length: {maximum: 105},format: {with: VALID_EMAIL_REGEX}
end

#Rubular checks regex
#add validations
#username & email must be present and unique
#email must be valid format (regex)
#username = min 3 max 25 | email max 105