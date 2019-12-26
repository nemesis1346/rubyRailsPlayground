class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :ldap_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

# class User < ApplicationRecord

#   validates :email, uniqueness: true
#   validates :username, uniqueness: true
  
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#   devise :ldap_authenticatable, :registerable, :authentication_keys => [:username],
#          :recoverable, :rememberable, :validatable

# end
