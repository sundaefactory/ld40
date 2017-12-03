package scripts;

import com.stencyl.graphics.G;
import com.stencyl.graphics.BitmapWrapper;

import com.stencyl.behavior.Script;
import com.stencyl.behavior.Script.*;
import com.stencyl.behavior.ActorScript;
import com.stencyl.behavior.SceneScript;
import com.stencyl.behavior.TimedTask;

import com.stencyl.models.Actor;
import com.stencyl.models.GameModel;
import com.stencyl.models.actor.Animation;
import com.stencyl.models.actor.ActorType;
import com.stencyl.models.actor.Collision;
import com.stencyl.models.actor.Group;
import com.stencyl.models.Scene;
import com.stencyl.models.Sound;
import com.stencyl.models.Region;
import com.stencyl.models.Font;
import com.stencyl.models.Joystick;

import com.stencyl.Engine;
import com.stencyl.Input;
import com.stencyl.Key;
import com.stencyl.utils.Utils;

import openfl.ui.Mouse;
import openfl.display.Graphics;
import openfl.display.BlendMode;
import openfl.display.BitmapData;
import openfl.display.Bitmap;
import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.events.TouchEvent;
import openfl.net.URLLoader;

import box2D.common.math.B2Vec2;
import box2D.dynamics.B2Body;
import box2D.dynamics.B2Fixture;
import box2D.dynamics.joints.B2Joint;
import box2D.collision.shapes.B2Shape;

import motion.Actuate;
import motion.easing.Back;
import motion.easing.Cubic;
import motion.easing.Elastic;
import motion.easing.Expo;
import motion.easing.Linear;
import motion.easing.Quad;
import motion.easing.Quart;
import motion.easing.Quint;
import motion.easing.Sine;

import com.stencyl.graphics.shaders.BasicShader;
import com.stencyl.graphics.shaders.GrayscaleShader;
import com.stencyl.graphics.shaders.SepiaShader;
import com.stencyl.graphics.shaders.InvertShader;
import com.stencyl.graphics.shaders.GrainShader;
import com.stencyl.graphics.shaders.ExternalShader;
import com.stencyl.graphics.shaders.InlineShader;
import com.stencyl.graphics.shaders.BlurShader;
import com.stencyl.graphics.shaders.SharpenShader;
import com.stencyl.graphics.shaders.ScanlineShader;
import com.stencyl.graphics.shaders.CSBShader;
import com.stencyl.graphics.shaders.HueShader;
import com.stencyl.graphics.shaders.TintShader;
import com.stencyl.graphics.shaders.BloomShader;



class Design_8_8_BehaviorGauge extends SceneScript
{
	public var _breath_value:Float;
	public var _eat_gauge:Actor;
	public var _breath_gauge:Actor;
	public var _drinkgauge:Actor;
	public var _peegauge:Actor;
	public var _poogauge:Actor;
	public var _sleepgauge:Actor;
	public var _lovegauge:Actor;
	public var _lightgauge:Actor;
	
	
	public function new(dummy:Int, dummy2:Engine)
	{
		super();
		nameMap.set("breath_value", "_breath_value");
		_breath_value = 100.0;
		nameMap.set("eat_gauge", "_eat_gauge");
		nameMap.set("breath_gauge", "_breath_gauge");
		nameMap.set("drink_gauge", "_drinkgauge");
		nameMap.set("pee_gauge", "_peegauge");
		nameMap.set("poo_gauge", "_poogauge");
		nameMap.set("sleep_gauge", "_sleepgauge");
		nameMap.set("love_gauge", "_lovegauge");
		nameMap.set("light_gauge", "_lightgauge");
		
	}
	
	override public function init()
	{
		
		/* ======================== When Creating ========================= */
		createRecycledActorOnLayer(getActorType(8), 0, 0, 1, "" + "ui");
		_breath_gauge = getLastCreatedActor();
		propertyChanged("_breath_gauge", _breath_gauge);
		_breath_gauge.say("BehaviorGauge", "_customBlock_setGaugeType", [0]);
		createRecycledActorOnLayer(getActorType(8), 0, 0, 1, "" + "ui");
		_drinkgauge = getLastCreatedActor();
		propertyChanged("_drinkgauge", _drinkgauge);
		_drinkgauge.say("BehaviorGauge", "_customBlock_setGaugeType", [1]);
		createRecycledActorOnLayer(getActorType(8), 0, 0, 1, "" + "ui");
		_peegauge = getLastCreatedActor();
		propertyChanged("_peegauge", _peegauge);
		_peegauge.say("BehaviorGauge", "_customBlock_setGaugeType", [2]);
		createRecycledActorOnLayer(getActorType(8), 0, 0, 1, "" + "ui");
		_eat_gauge = getLastCreatedActor();
		propertyChanged("_eat_gauge", _eat_gauge);
		_eat_gauge.say("BehaviorGauge", "_customBlock_setGaugeType", [3]);
		createRecycledActorOnLayer(getActorType(8), 0, 0, 1, "" + "ui");
		_poogauge = getLastCreatedActor();
		propertyChanged("_poogauge", _poogauge);
		_poogauge.say("BehaviorGauge", "_customBlock_setGaugeType", [4]);
		createRecycledActorOnLayer(getActorType(8), 0, 0, 1, "" + "ui");
		_sleepgauge = getLastCreatedActor();
		propertyChanged("_sleepgauge", _sleepgauge);
		_sleepgauge.say("BehaviorGauge", "_customBlock_setGaugeType", [5]);
		createRecycledActorOnLayer(getActorType(8), 0, 0, 1, "" + "ui");
		_lightgauge = getLastCreatedActor();
		propertyChanged("_lightgauge", _lightgauge);
		_lightgauge.say("BehaviorGauge", "_customBlock_setGaugeType", [6]);
		createRecycledActorOnLayer(getActorType(8), 0, 0, 1, "" + "ui");
		_lovegauge = getLastCreatedActor();
		propertyChanged("_lovegauge", _lovegauge);
		_lovegauge.say("BehaviorGauge", "_customBlock_setGaugeType", [7]);
		
	}
	
	override public function forwardMessage(msg:String)
	{
		
	}
}