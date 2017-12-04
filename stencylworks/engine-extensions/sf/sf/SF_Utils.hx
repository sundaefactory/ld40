package sf;

import com.stencyl.models.Actor;
import com.stencyl.models.Scene;
import haxe.ds.StringMap;
import openfl.Assets;

class SF_Utils
{
	static public var instance(get_instance, null):SF_Utils;
	
	static private var m_instance:SF_Utils = null;
	static private function get_instance():SF_Utils
	{
		if (m_instance == null)
			m_instance = new SF_Utils();
		return m_instance;
	}	
	
	//////////////////////////////////////////////////////////////////
	private function new()
	{
	}
	
	public function color(a_actor:Actor, a_color:Int):Void
	{
		var _c:openfl.geom.ColorTransform=a_actor.transform.colorTransform;
		_c.color=a_color;
		a_actor.transform.colorTransform=_c;
	}
	
	public function scaleX(a_actor:Actor, a_scaleX:Float):Void
	{
		a_actor.realScaleX = a_scaleX;
	}
	
	public function facingRight(a_actor:Actor, a_right:Bool):Void
	{
		if ((a_actor.realScaleX<0 && a_right) || (a_actor.realScaleX>0 && !a_right))
			a_actor.realScaleX = -a_actor.realScaleX;
	}
	
}