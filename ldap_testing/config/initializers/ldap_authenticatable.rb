require 'net/ldap'
require 'devise/strategies/authenticatable'

module Devise
  module Strategies
    class LdapAuthenticatable < Authenticatable
      def authenticate!
        if params[:user]
          puts 'ENTERS INTO AUTHENTICATE CUTMIZD-----------------'

          ldap = Net::LDAP.new
          ldap.host = "ldap.nobleprog.com"
          ldap.port = 389
          # ldap.auth username, password
          ldap.auth "cn=mmaigua,ou=employees,ou=users,dc=nobleprog", "trinity1346"

          puts 'PASSED LDAP CONFIG-----------------'

          if ldap.bind
            puts "ENTERED SUCCEEDED"
            user = User.find_or_create_by(username: username)
            success!(user)
          else
            return fail(:invalid_login)
          end
        end
      end
      
      def username
        puts params[:user][:username]
        params[:user][:username]
      end

      def password
        puts params[:user][:password]
        params[:user][:password]
      end

    end
  end
end

Warden::Strategies.add(:ldap_authenticatable, Devise::Strategies::LdapAuthenticatable)