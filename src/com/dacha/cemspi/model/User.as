package com.dacha.cemspi.model
{
    [Bindable]
    public class User extends ValueObject
    {
        public var username:String;
        
        public var fullname:String;
        
        public var password:String;
        
        public var deployment:int;
        
        public var inbox:int;
        
        public var isadmin:Boolean;
        
        public var isboardadmin:Boolean;
    }
}