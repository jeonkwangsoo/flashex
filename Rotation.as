package 
{

	import flash.display.*;
    import flash.events.*;
	import flash.net.*;

	public class Rotation extends MovieClip
	{

		var mc:Sprite;
        var mc2:Sprite;
		var mc3:Sprite;
		var mc4:Sprite;
		public function Rotation()
		{

            Init();
		}
		private function Init():void
		{
            mc = new Sprite();
			mc.graphics.beginFill(0x00ff00);
			// The center of objects must be located at point zero
			mc.graphics.drawRoundRect(-50,-50,100,100,10,10);
			mc.x = 150;
			mc.y = 150;
			addChild(mc);
			
			mc2 = new Sprite();
			mc2.graphics.beginFill(0xff0000);
			mc2.graphics.drawRoundRect(-50,-50,100,100,10,10);
			mc2.x = 150;
			mc2.y = 320;
			
			mc3 = new Sprite();
			mc3.graphics.beginFill(0x0000ff);
			mc3.graphics.drawRoundRect(-50,-50,100,100,10,10);
			mc3.x = 300;
			mc3.y = 150;
			
		    mc4 = new Sprite();
			mc4.graphics.beginFill(0xffff00);
			mc4.graphics.drawRoundRect(0,0,100,100,10,10);
			mc4.x = 320;
			mc4.y = 250;

			addChild(mc);
			addChild(mc2);
			addChild(mc3);
			addChild(mc4);
			
			addEventListener(Event.ENTER_FRAME,Method1);
			BottonSource.addEventListener(MouseEvent.CLICK,SourceView);
			
		}
        private function Method1(e:Event):void
		{
			//range : 0 ~ 180 degree => clockwise or counterclockwise rotation
			//2D rotation == 3D Z rotation
			mc.rotation += 5;
			mc2.rotationY += 5;
			mc3.rotationX += 5;
			mc4.rotationY += 5;

		}
		private function SourceView(e:MouseEvent):void
		{
			var r:URLRequest = new URLRequest("http://web-boramy.cloudsc.kr/rotation.html");
			navigateToURL(r);
		}
	}

}