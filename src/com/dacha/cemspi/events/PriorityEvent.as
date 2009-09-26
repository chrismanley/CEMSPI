package com.dacha.cemspi.events
{
	import flash.events.Event;

	public class PriorityEvent extends Event
	{
		public static const LOAD: String 		= "loadPriorityEvent";
		
		public var priority:string;

		public function PriorityEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}