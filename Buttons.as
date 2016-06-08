package 
{

	import flash.display.*;
    import flash.events.*;
    import flash.net.*;

	public class Buttons extends MovieClip
	{


		public function Buttons()
		{
			this.addEventListener(MouseEvent.MOUSE_OVER,Method1);
			this.addEventListener(MouseEvent.MOUSE_OUT,Method1);

		}
		public function Method1(e:MouseEvent):void
		{
			switch(e.type)
			{
				case "mouseOver" :
				      e.currentTarget.alpha = 0.8;
					  break;
				case "mouseOut" :
				      e.currentTarget.alpha = 1;
					  break;
			}
		}

	}

}