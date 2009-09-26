package com.dacha.cemspi.events
{
	import com.dacha.cemspi.model.Caller;
	
	import flash.events.Event;

	public class CallerEvent extends Event
	{
		public static const LOAD: String 		= "loadCallerEvent";
		public static const SAVE: String 		= "saveCallerEvent";
		public static const SEARCH: String 		= "searchCallerEvent";
		public static const STARTUP: String     = "startupCallerEvent";
		
		public var caller:Caller;

		public function CallerEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}