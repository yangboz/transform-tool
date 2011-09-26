package com.vstyran.transform.utils
{
	import flash.geom.Point;

	public class MathUtil
	{
		include "../Version.as";
		
		public static function roundPoint(point:Point, precision:uint = 0):Point
		{
			return new Point(round(point.x, precision), round(point.y, precision));
		}
		
		public static function floorPoint(point:Point, precision:uint = 0):Point
		{
			return new Point(floor(point.x, precision), floor(point.y, precision));
		}
		
		public static function round(value:Number, precision:uint = 0):Number
		{
			var p:Number = Math.pow(10, precision);
			return Math.round(value*p)/p;
		}
		
		public static function floor(value:Number, precision:uint = 0):Number
		{
			var p:Number = Math.pow(10, precision);
			return Math.floor(value*p)/p;
		}
	}
}