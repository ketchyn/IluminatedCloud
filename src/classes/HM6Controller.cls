/**
 * Created by LanaPC on 22.06.2016.
 */

public with sharing class HM6Controller {
    public HM6__c hm;

    public HM6__c getHM(){
        return hm;

    }

    private String fillMessalge(Decimal index1, Decimal index2){
        if(index1>index2) {
            return 'index1>index2';
        }else return 'index1<index2';
    }

    public HM6Controller(){
        hm=new HM6__C();

    }

    public Boolean getcheck(){
        if (hm.index1__c==hm.index2__c)return true;
        else {
           hm.reason_not_equals__c= fillMessalge(hm.index1__c,hm.index2__c);
            return false;
        }
    }
//
    public PageReference save(){
        if (getcheck()) insert hm;
        return null;
    }


}