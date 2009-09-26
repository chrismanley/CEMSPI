package com.dacha.cemspi.business
{
	import com.dacha.cemspi.model.*;
	
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	
	public class InboxManager extends EventDispatcher 
	{	
		[Bindable]
		private var _callerList:ArrayCollection;
		
		[Bindable (event="callerListChanged")]
		public function get callerList():ArrayCollection
		{
			return _callerList;
		}
				
		public function loadCallerList(callers:Array):void {
			_callerList = new ArrayCollection(callers);
		}
	
		
	}
}