package 
{

	import flash.display.*;
	import flash.events.*;
	import flash.geom.*;
	import flash.net.*;

    [SWF(backgroundColor=0x000000)]
	public class Test13 extends MovieClip
	{

        var s:Sprite;
		var s2:Sprite;
		var s3:Sprite;

		var line:Sprite;
		var line2:Sprite;
	    var line3:Sprite;
        // t is the value of the radians
		var t:Number = 0;
		var t2:Number = 0;
		var t3:Number = 0;

		var r:Number = 100;

		public function Test13()
		{
			Init();
		}
		private function Init():void
		{
			s = new Sprite();
			s.graphics.beginFill(0x0000ff);
            s.graphics.drawCircle(0,0,3);
			s.x = 100;
			s.y = 100;
			addChild(s);
			
			line = new Sprite();
			line.graphics.lineStyle(1,0xff0000);
			// s.x + r  :  line isn't visible from s.x to r when it's loading
			line.graphics.moveTo(s.x+r,s.y);			
			addChild(line);s
			
			s2 = new Sprite();
			s2.graphics.beginFill(0xff0000);
            s2.graphics.drawCircle(0,0,3);
			s2.x = 400;
			s2.y = 100;
			addChild(s2);
			
			line2 = new Sprite();
			line2.graphics.lineStyle(1,0x0000ff);
			// elipse : r1 + r2 = 2a
			// y is semimajor axis, x is semiminor axis
			line2.graphics.moveTo(s2.x+r/2,s2.y);			
			addChild(line2);
			
			s3 = new Sprite();
			s3.graphics.beginFill(0xff0000);
            s3.graphics.drawCircle(0,0,3);
			s3.x = 100;
			s3.y = 300;
			addChild(s3);
			
			line3 = new Sprite();
			line3.graphics.lineStyle(1,0x00ff00);
			// x is semimajor axis
			line3.graphics.moveTo(s3.x+r,s3.y);			
			addChild(line3);
			

			addEventListener(Event.ENTER_FRAME,Method1);
			//Button1 is already created on stage
			Button1.addEventListener(MouseEvent.CLICK,Method2);
		}
		private function Method1(e:Event):void
		{
			s.x = 100 + r*Math.cos(t);
            s.y = 100 + r*Math.sin(t);
			t += 0.05;
		    line.graphics.lineTo(s.x,s.y);
			
			s2.x = 400 + r/2*Math.cos(t2);
            s2.y = 100 + r*Math.sin(t2);
			t2 += 0.05;
		    line2.graphics.lineTo(s2.x,s2.y);
			
			s3.x = 100 + r*Math.cos(t3);
            s3.y = 300 + r/2*Math.sin(t3);
			t3 += 0.05;
		    line3.graphics.lineTo(s3.x,s3.y);
			
		}
		private function Method2(e:MouseEvent):void
		{
			var r:URLRequest = new URLRequest("http://web-boramy.cloudsc.kr/polar1.html");
			navigateToURL(r);
		}
	}

}