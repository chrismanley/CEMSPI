package com.dacha.cemspi.business
{
	import com.dacha.cemspi.model.*;
	
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	
	public class CallerManager extends EventDispatcher 
	{	
		private var _deploymentList:ArrayCollection;
		private var _priorityList:ArrayCollection;
		private var _inboxList:ArrayCollection;
		private var _cities:ArrayCollection;
		
		
		[Bindable]
		private var _caller:Caller;
		
		
		public function get citiesList():ArrayCollection
		{
			return _cities;
		}
		
		public function get deploymentList():ArrayCollection
		{
			return _deploymentList;
		}
		
		public function get priorityList():ArrayCollection
		{
			return _priorityList;
		}
		
		public function get inboxList():ArrayCollection
		{
			return _inboxList;
		}
		
		[Bindable (event="callerChanged")]
		public function get caller():Caller
		{
			return _caller;
		}
		
		public function loadStartupData(startupData:Array):void	{
			loadDeploymentList(startupData[0]);
			loadPriorityList(startupData[1]);
			loadInboxList(startupData[2]);
			loadCitiesList(startupData[3]);
		}

		public function loadCitiesList(cities:Array):void {
			_cities = new ArrayCollection(cities);
		}
		
		public function loadDeploymentList(deployments:Array):void {
			_deploymentList = new ArrayCollection(deployments);
		}
		
		public function loadPriorityList(priorities:Array):void {
			_priorityList = new ArrayCollection(priorities);
		}
		
		public function loadInboxList(inboxes:Array):void {
			_inboxList = new ArrayCollection(inboxes);
		}
		
		public function loadCallerFromSearch(callers:Array):void {
			
			if(callers.length > 0) 
			{
				_caller = new Caller();
				_caller.firstname = callers[0].firstname;
				_caller.lastname = callers[0].lastname;
				_caller.primaryphone = callers[0].primaryphone;
				_caller.secondaryphone = callers[0].secondaryphone;
				_caller.streetnumber = callers[0].streetnumber;
				_caller.streetname = callers[0].streetname;
				_caller.streettype = callers[0].streettype;
				_caller.city = callers[0].city;
				_caller.postalcode = callers[0].postalcode;
				_caller.ruralurban = callers[0].rualurban;
				dispatchEvent(new Event('callerChanged'));
			}
		}
		
		public function resetCaller():void {
			_caller = new Caller();
			dispatchEvent(new Event('callerChanged'));
		}
		
		public function callerSaveFinished(results:Object):void {
			resetCaller();
		}
	
		
	}
}