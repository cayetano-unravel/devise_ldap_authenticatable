require File.expand_path('../spec_helper', File.dirname(__FILE__))

describe 'Users' do

  describe "using Ldapter Java class" do
    before do
      ::Devise.ldap_ldapter = true
      ::Devise.authentication_keys = [:uid]
    end

    it "authenticates using User's uid and the correct password" do
      user = Factory.create(:user, :uid => 'utest')
      expect(user.valid_ldap_authentication? 'fortytwo!').to be true
    end

    it "refuses to authenticate using incorrect username/password combination" do
      user = Factory.create(:user, :uid => 'utest')
      other = Factory.create(:other)
      expect(user.valid_ldap_authentication? 'a password').to be false
      expect(other.valid_ldap_authentication? 'fortytwo!').to be false
    end
  end

end
