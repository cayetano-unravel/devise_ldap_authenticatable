package com.unraveldata.auth;

/**
 * LDAP Adapter.
 *
 * Created: 20160309T1857
 *
 * @author pbaclace
 */
public class Ldapter {

    public boolean authenticate(String user, String password) {
        //ToDo: real implementation using JNDI
        if ("utest".equals(user) && "fortytwo!".equals(password)) {
            return true;
        } else {
            return false;
        }
    }
}
