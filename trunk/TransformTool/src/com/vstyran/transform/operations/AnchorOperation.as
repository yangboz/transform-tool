package com.vstyran.transform.operations
{
	import com.vstyran.transform.model.DisplayData;
	import com.vstyran.transform.utils.MathUtil;
	import com.vstyran.transform.utils.TransformUtil;
	
	import flash.geom.Matrix;
	import flash.geom.Point;
	
	/**
	 * Base class for operations that uses anchor point.
	 * 
	 * @author Volodymyr Styranivskyi
	 */
	public class AnchorOperation implements IAncorOperation
	{
		include "../Version.as";
		
		[Bindable]
		/**
		 * Point in transform tool coordinate space that used as anchor. 
		 */		
		public var anchorPoint:Point;
		
		/**
		 * Anchor point at the moment of starting transformation. 
		 */	
		protected var startAnchor:Point;
		
		/**
		 * Data object of transform tool at the moment of starting transformation. 
		 */		
		protected var startData:DisplayData;
		
		/**
		 * Mouse position in transform tool coordinate space 
		 * at the moment of starting transformation.  
		 */		
		protected var startPoint:Point;
		
		/**
		 * Constructor. 
		 */		
		public function AnchorOperation()
		{
		}

		/**
		 * @inheritDoc 
		 */		
		public function initOperation(data:DisplayData, point:Point):void
		{
			startData = data;
			startPoint = MathUtil.roundPoint(point);
			if(anchorPoint)
				startAnchor =  MathUtil.floorPoint(anchorPoint.clone(), 2)
			else
				startAnchor =  MathUtil.floorPoint(new Point(startData.width/2, startData.height/2));	
		}
		
		/**
		 * @inheritDoc 
		 */
		public function doOperation(point:Point):DisplayData
		{
			// should be overriden
			return null;
		}
	}
}