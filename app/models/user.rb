class User < ApplicationRecord
    has_secure_password

    validates_presence_of :username
    validates_uniqueness_of :username, case_sensitive: false
    validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }


    has_many :entries
end
