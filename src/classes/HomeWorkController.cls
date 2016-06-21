public with sharing class HomeWorkController {

    String name;

    public String getName(){
        return name;
    }
    public HomeWorkController() {

    }

//
    public PageReference showName(){
        name = apexpages.currentpage().getparameters().get('Name');
        //return name;

    }
}