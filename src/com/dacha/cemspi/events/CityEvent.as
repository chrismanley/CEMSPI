package com.dacha.cemspi.events
{
	import flash.events.Event;

	public class CityEvent extends Event
	{
		public static const LOAD: String 		= "loadCityEvent";
		
		public var city:string;

		public function CityEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}