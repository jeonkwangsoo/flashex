package 
{

	import flash.display.*;
	import flash.events.*;
	import fl.controls.Label;
    import flash.geom.*;

	public class Rose11 extends Polar
	{

        var c:ColorTransform;
		public function Rose11()
		{
			var label1:Label = new Label();
			label1.text = "r = asin(nθ)"
			label1.x = 10;
			label1.y = 10;
			addChild(label1);
			var label2:Label = new Label();
			label2.text = "n = 3/5"
			label2.x = 10;
			label2.y = 20;
			addChild(label2);
			
			c = new ColorTransform();
			c.color += 0xff0000;
			line.transform.colorTransform = c;

			n = 3/5;
		}
	}
}
