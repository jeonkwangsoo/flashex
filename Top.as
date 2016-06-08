package 
{

	import flash.display.MovieClip;
    import flash.events.*;
	import fl.controls.*;
	import flash.net.*;

	public class Top extends MovieClip
	{


		public function Top()
		{
			ButtonHome.addEventListener(MouseEvent.CLICK,Method1);
			ButtonDistance.addEventListener(MouseEvent.CLICK,Method2);
			ButtonRotation.addEventListener(MouseEvent.CLICK,MRotation);
			ButtonCircle.addEventListener(MouseEvent.CLICK,MPolar1);
			ButtonCircle2.addEventListener(MouseEvent.CLICK,MPolar2);
			ButtonPolar.addEventListener(MouseEvent.CLICK,MPolar3);
		}
		private function Method1(e:MouseEvent):void
		{
			var r:URLRequest = new URLRequest("http://web-boramy.cloudsc.kr/index.html");
			navigateToURL(r);
		}
		private function Method2(e:MouseEvent):void
		{
			var r:URLRequest = new URLRequest("http://web-boramy.cloudsc.kr/Dindex.html");
			navigateToURL(r);
		}
		private function MRotation(e:MouseEvent):void
		{
			var r:URLRequest = new URLRequest("http://web-boramy.cloudsc.kr/Rindex.html");
			navigateToURL(r);
		}
		private function MPolar1(e:MouseEvent):void
		{
			var r:URLRequest = new URLRequest("http://web-boramy.cloudsc.kr/Circleindex.html");
			navigateToURL(r);
		}
		private function MPolar2(e:MouseEvent):void
		{
			var r:URLRequest = new URLRequest("http://web-boramy.cloudsc.kr/Circleindex2.html");
			navigateToURL(r);
		}
		private function MPolar3(e:MouseEvent):void
		{
			var r:URLRequest = new URLRequest("http://web-boramy.cloudsc.kr/Polarindex.html");
			navigateToURL(r);
		}
	}

}