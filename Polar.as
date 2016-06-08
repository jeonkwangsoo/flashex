package 
{

	import flash.display.*;
	import flash.net.*;
	import flash.events.*;
	import flash.geom.ColorTransform;

	public class Polar extends MovieClip
	{

        var s:Sprite;
		public var line:Sprite;
		var t:Number=0;      // t : radian : equal to θ (angle)
		var r:Number=100;    // r : radius
		
		public var n:Number=2;   
		
		public function Polar()
		{
			Init();
		}
		public function Init():void
		{
			//  s is a samall circle object to move
			s = new Sprite();
			s.graphics.beginFill(0xff0000);
			s.graphics.drawCircle(0,0,3);
			s.x = stage.stageWidth/2;
			s.y = stage.stageHeight/2;
			addChild(s);
			// line is an object following the small circle
			line = new Sprite();
			line.graphics.lineStyle(0.1,0x0000ff);
			line.graphics.moveTo(s.x,s.y);
			addChild(line);
			
			
			addEventListener(Event.ENTER_FRAME,Method1);
		}
		public function Method1(e:Event):void
		{
			// r = asin(nθ)
			r = 100*Math.sin(n*t);

			s.x = stage.stageWidth/2 + r*Math.cos(t);
			s.y = stage.stageHeight/2 + r*Math.sin(t);
			t += 0.1;
			// if (t < 6.7) then the line is created to only one circle
			// if (t = e, π, √2 ... ) then the line is created to ∞
			if(t<100)
			{
				line.graphics.lineTo(s.x,s.y);
			}
		}
	}
}