package remotair.view
{
    import flash.display.Shape;
    import flash.system.Capabilities;
    
    public class FingerTracker extends Shape
    {
        public function FingerTracker(color:uint)
        {
            super();
            
            var radius:Number = Capabilities.screenDPI / 4;
            
            graphics.beginFill(color, 0.2);
            graphics.lineStyle(1, color, 0.5);
            graphics.drawCircle(0, 0, radius);
        }
    }
}