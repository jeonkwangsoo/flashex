﻿package 
{

	import flash.display.*;
	import flash.events.*;
	import fl.controls.Label;


	public class Rose6 extends Polar
	{


		public function Rose6()
		{
			var label1:Label = new Label();
			label1.text = "r = asin(nθ)"
			label1.x = 10;
			label1.y = 10;
			addChild(label1);
			var label2:Label = new Label();
			label2.text = "n = 2/3"
			label2.x = 10;
			label2.y = 20;
			addChild(label2);
			
			n = 2/3;
		}
	}
}