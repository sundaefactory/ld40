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



class Design_3_3_ScoutMovement extends ActorScript
{
	public var _LeftControl:String;
	public var _RightControl:String;
	public var _MoveX:Float;
	public var _UseControls:Bool;
	public var _PreventVerticalMovement:Bool;
	public var _StartY:Float;
	public var _Speed:Float;
	public var _UseAnimations:Bool;
	public var _StopTurning:Bool;
	public var _FacingRight:Bool;
	public var _kicking:Bool;
	public var _kickstick:Bool;
	public var _kicked:Bool;
	public var _tmp:Float;
	public var _hit:Bool;
	public var _offsetx:Float;
	
	/* ========================= Custom Event ========================= */
	public function _customEvent_resetoffset():Void
	{
		/* pour remettre le decalage comme il faut, à la fin de l'anim de kick ou lors de la mort */
		actor.setX((actor.getX() - _offsetx));
		actor.setValue("Camera Follow Player", "_XOffset", 0);
		_offsetx = asNumber(0);
		propertyChanged("_offsetx", _offsetx);
	}
	
	
	public function new(dummy:Int, actor:Actor, dummy2:Engine)
	{
		super(actor);
		nameMap.set("Actor", "actor");
		nameMap.set("Left Control", "_LeftControl");
		nameMap.set("Right Control", "_RightControl");
		nameMap.set("Move X", "_MoveX");
		_MoveX = 0.0;
		nameMap.set("Use Controls", "_UseControls");
		_UseControls = true;
		nameMap.set("Prevent Vertical Movement", "_PreventVerticalMovement");
		_PreventVerticalMovement = false;
		nameMap.set("Start Y", "_StartY");
		_StartY = 0.0;
		nameMap.set("Speed", "_Speed");
		_Speed = 30.0;
		nameMap.set("Use Animations", "_UseAnimations");
		_UseAnimations = true;
		nameMap.set("Stop Turning", "_StopTurning");
		_StopTurning = true;
		nameMap.set("Facing Right", "_FacingRight");
		_FacingRight = false;
		nameMap.set("kicking", "_kicking");
		_kicking = false;
		nameMap.set("kickstick", "_kickstick");
		_kickstick = false;
		nameMap.set("kicked", "_kicked");
		_kicked = false;
		nameMap.set("tmp", "_tmp");
		_tmp = 0.0;
		nameMap.set("hit", "_hit");
		_hit = false;
		nameMap.set("offsetx", "_offsetx");
		_offsetx = 0.0;
		
	}
	
	override public function init()
	{
		
		/* ======================== When Creating ========================= */
		_StartY = asNumber(actor.getY());
		propertyChanged("_StartY", _StartY);
		_tmp = asNumber(0);
		propertyChanged("_tmp", _tmp);
		_FacingRight = true;
		propertyChanged("_FacingRight", _FacingRight);
		
		/* ======================== When Updating ========================= */
		addWhenUpdatedListener(null, function(elapsedTime:Float, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled)
			{
				if(_UseControls)
				{
					_MoveX = asNumber((asNumber(isKeyDown(_RightControl)) - asNumber(isKeyDown(_LeftControl))));
					propertyChanged("_MoveX", _MoveX);
				}
				if(_kicking)
				{
					actor.setXVelocity(0);
				}
				else
				{
					actor.setXVelocity((_MoveX * _Speed));
					if(_PreventVerticalMovement)
					{
						actor.setY(_StartY);
						actor.setYVelocity(0);
					}
					if((_StopTurning && !(_MoveX == 0)))
					{
						actor.setAngularVelocity(Utils.RAD * (0));
					}
					_MoveX = asNumber(0);
					propertyChanged("_MoveX", _MoveX);
					if((actor.getXVelocity() > 0))
					{
						_FacingRight = true;
						propertyChanged("_FacingRight", _FacingRight);
					}
					else if((actor.getXVelocity() < 0))
					{
						_FacingRight = false;
						propertyChanged("_FacingRight", _FacingRight);
					}
					if(_UseAnimations)
					{
						if((actor.getXVelocity() == 0))
						{
							if(_FacingRight)
							{
								actor.setAnimation("" + "idle-r");
							}
							else
							{
								actor.setAnimation("" + "idle-l");
							}
						}
						else
						{
							if(_FacingRight)
							{
								actor.setAnimation("" + "walk-r");
							}
							else
							{
								actor.setAnimation("" + "walk-l");
							}
						}
					}
				}
			}
		});
		
	}
	
	override public function forwardMessage(msg:String)
	{
		
	}
}