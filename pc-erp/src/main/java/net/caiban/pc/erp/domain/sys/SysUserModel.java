package net.caiban.pc.erp.domain.sys;

/**
 * Created by mar on 16/3/30.
 */
public class SysUserModel extends SysUser {

    private Integer accept;
    private String passwordRepeat;
    private String originPassword;
    private Integer rememberMe;
    private String rebuildedAccount;

    public String getRebuildedAccount() {
        return rebuildedAccount;
    }

    public void setRebuildedAccount(String rebuildedAccount) {
        this.rebuildedAccount = rebuildedAccount;
    }

    public Integer getAccept() {
        return accept;
    }

    public void setAccept(Integer accept) {
        this.accept = accept;
    }

    public String getPasswordRepeat() {
        return passwordRepeat;
    }

    public void setPasswordRepeat(String passwordRepeat) {
        this.passwordRepeat = passwordRepeat;
    }

    public String getOriginPassword() {
        return originPassword;
    }

    public void setOriginPassword(String originPassword) {
        this.originPassword = originPassword;
    }

    public Integer getRememberMe() {
        return rememberMe;
    }

    public void setRememberMe(Integer rememberMe) {
        this.rememberMe = rememberMe;
    }
}
