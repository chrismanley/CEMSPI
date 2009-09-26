package com.dacha.cemspi.events
{
	import com.dacha.cemspi.model.Inbox;
	
	import flash.events.Event;

	public class InboxEvent extends Event
	{
		public static const LOAD: String 	= "loadInboxEvent";
		
		public var Inbox:Inbox;

		public function InboxEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}