package com.dacha.cemspi.events
{
	import com.dacha.cemspi.model.Deployment;
	
	import flash.events.Event;

	public class DeploymentEvent extends Event
	{
		public static const LOAD: String 		= "loadDeploymentEvent";
		
		public var deployment:Deployment;

		public function DeploymentEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}