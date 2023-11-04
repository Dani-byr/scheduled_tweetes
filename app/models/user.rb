#Atributos de la tabla USER:
# - email: string
# - password_digest: string

# - password: string (atributo virtual)
# - password_confirmation: string (atributo virtual)
# Los anteriores son atributos creados por el procedimiento "has_secure_password"

# Realmente, con los atributos que interactuamos son: email, password y password_confirmation

class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end
