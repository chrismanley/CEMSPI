package com.dacha.cemspi.business
{
	import com.dacha.cemspi.model.*;
	
	import flash.events.EventDispatcher;
	
	public class SessionManager extends EventDispatcher
	{
		[Bindable]
		private var _session:Session;
		
		[Bindable]
		private var _state:String = "LoggedIn";
		
		[Bindable]
		private var _sessionError:String;
		
		[Bindable (event="stateChanged")]
		public function get state():String
		{
			return _state;
		}
	
		[Bindable (event="sessionChanged")]
		public function get session():Session
		{
			return _session;
		}
		
		[Bindable (event="sessionErrorChanged")]
		public function get sessionError():String
		{
			return _sessionError;
		}
				
		public function loginAttempt(callers:Array):void {
			if(callers.length > 0)
			{
				var currentUser:User = new User();
				currentUser.username = callers[0];
				
				_session = new Session();
				_session.currentUser = currentUser;
				_state = "LoggedIn";
				_sessionError = "";
			}
			else 
			{
				_session = null;
				_sessionError = "Login failed.  Check your username and password and try again.";
				_state = "LoggedOut";
			}
			dispatchEvent(new Event('sessionErrorChanged'));
			dispatchEvent(new Event('sessionChanged'));
			dispatchEvent(new Event('stateChanged'));
		}
		
	}
}