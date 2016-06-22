/**
 * Created by LanaPC on 22.06.2016.
 */

public with sharing class HM5Controller {
    private final Account account;

    public Boolean notedit=true;

    public Boolean getnotedit() {
        return notedit;
    }

    public HM5Controller(ApexPages.StandardController stdController) {
        this.account = (Account) stdController.getRecord();

    }

    public PageReference edit() {
        notedit = false;
        return null;

    }
    public PageReference save() {
        update account;
        notedit = true;
        return null;

    }
    public PageReference cansel() {
        notedit = true;
        return null;

    }

}