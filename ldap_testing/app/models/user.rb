# frozen_string_literal: true

class User < ApplicationRecord
  #validates :username, uniqueness: true
  attr_accessor :username
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :ldap_authenticatable, :registerable,
  #        :rememberable

   devise :database_authenticatable, :registerable,
         :rememberable

  def email_required?
    false
 end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
 end
end
