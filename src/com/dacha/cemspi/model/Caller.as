package com.dacha.cemspi.model
{
    [Bindable]
    public class Caller extends ValueObject
    {
        public var id:String;
        
        public var firstname:String;
        public var lastname:String;
        public var primaryphone:String;
        public var secondaryphone:String;
        public var streetnumber:String;
        public var streetname:String;
        public var streettype:String;
        public var city:String;
        public var postalcode:String;
        public var inquiry:String;
        public var response:String;
        
        public var location:String;
        
        public var responseavailable:String;
        public var assignedto:String;
        public var recorded_date:Date;
        public var closed_date:Date;
        public var closed_by:String;
        public var recordedby:String;
        
        public var priority:int;
        public var ruralurban:String;
        public var activated:Boolean;
    }
}