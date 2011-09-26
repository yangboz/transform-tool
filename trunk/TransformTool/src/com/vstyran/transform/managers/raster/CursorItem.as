package com.vstyran.transform.managers.raster
{
	import com.vstyran.transform.controls.Control;
	import com.vstyran.transform.namespaces.tt_internal;
	public class CursorItem
	{
		include "../../Version.as";
		
		public function CursorItem()
		{
		}
		
		public var control:Control;
		
		public var cursor:Class;
		
		public var priority:int = 2;
		
		public var xOffset:Number = 0;
		
		public var yOffset:Number = 0;
		
		tt_internal var cursorID:Number = -1;
	}
}