package 
{

	import flash.display.*;
	import flash.events.*;


	public class Array extends MovieClip
	{

        var s:Shape;
		var a:Array;
		public function Array()
		{
			Init();
		}
		private function Init():void
		{			
            a = new Array();
			

			for(var i:int=0;i<10;i++)
			{				
				s = new Shape();
				s.graphics.beginFill(0x00ff00);
				s.graphics.drawRect(0,0,20,20);
				addChild(s);
				a.push(s);
 
				a[i].addEventListener(Event.ENTER_FRAME,Method1);
			}

		}
		private function Method1(e:Event):void
		{
			for(var j:int=0;j<10;j++)
			{
               a[j].x = 50*j;
			   a[j].y = 50*j;
			}
		}
	} 

}