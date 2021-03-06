class User < ApplicationRecord

    has_many :mealplans
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, length: { in: 6..20 }

    def auth_token
        JWT.encode({ id: self.id}, 'woeufnsldnfjd')
    end

    def as_json(*)
        super.except('password_digest')
    end
end
