package com.dacha.cemspi.events
{
	import com.dacha.cemspi.model.User;
	
	import flash.events.Event;

	public class LoginEvent extends Event
	{
		public static const LOGIN: String 		= "loginEvent";
				
		public var user:User;

		public function LoginEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}