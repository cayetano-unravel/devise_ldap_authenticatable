require 'java'
java_import com.unraveldata.auth.Ldapter

module Devise
  module LDAP
    module Ldapter
      
      def self.valid_credentials?(login, password_plaintext)
        Java::ComUnraveldataAuth::Ldapter.new.authenticate(login, password_plaintext)
      end
      
    end
  end
end
