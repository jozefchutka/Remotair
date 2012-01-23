package remotair
{
    import flash.events.EventDispatcher;
    
    import sk.yoz.system.SystemKeyboard;
    import sk.yoz.system.SystemMouse;
    
    public class Controller extends EventDispatcher
    {
        private static const _instance:Controller = new Controller;
        
        public function Controller()
        {
            super();
            
            if(instance)
                throw new Error("Use Controller.instance!");
        }
        
        public static function get instance():Controller
        {
            return _instance;
        }
        
        public function mouseMove(x:Number, y:Number):void
        {
            SystemMouse.moveBy("MoveCursor.exe", x, y);
        }
        
        public function mouseEvent(flag:String):void
        {
            SystemMouse.event("MouseEvent.exe", flag);
        }
        
        public function keyboardEvent(keyCode:uint):void
        {
            SystemKeyboard.event("KeyboardEvent.exe", keyCode);
        }
    }
}