#if !macro


@:access(lime.app.Application)
@:access(lime.Assets)
@:access(openfl.display.Stage)


class ApplicationMain {
	
	
	public static var config:lime.app.Config;
	public static var preloader:openfl.display.Preloader;
	
	
	public static function create ():Void {
		
		var app = new openfl.display.Application ();
		app.create (config);
		
		var display = new scripts.StencylPreloader ();
		
		preloader = new openfl.display.Preloader (display);
		app.setPreloader (preloader);
		preloader.onComplete.add (init);
		preloader.create (config);
		
		#if (js && html5)
		var urls = [];
		var types = [];
		
		
		urls.push ("assets/graphics/1.5x/sprite-5-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1.5x/sprite-5-1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1.5x/sprite-5-2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1.5x/sprite-5-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1.5x/sprite-7-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1.5x/sprite-9-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1.5x/tileset-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1x/sprite-5-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1x/sprite-5-1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1x/sprite-5-2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1x/sprite-5-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1x/sprite-7-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1x/sprite-9-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/1x/tileset-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/2x/sprite-5-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/2x/sprite-5-1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/2x/sprite-5-2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/2x/sprite-5-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/2x/sprite-7-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/2x/sprite-9-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/2x/tileset-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/3x/sprite-5-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/3x/sprite-5-1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/3x/sprite-5-2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/3x/sprite-5-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/3x/sprite-7-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/3x/sprite-9-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/3x/tileset-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/4x/sprite-5-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/4x/sprite-5-1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/4x/sprite-5-2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/4x/sprite-5-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/4x/sprite-7-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/4x/sprite-9-0.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/4x/tileset-3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/default-font.fnt");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/graphics/default-font.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/preloader-badge.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/preloader-bg.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/preloader-bg@1.5x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/preloader-bg@2x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/preloader-bg@3x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/graphics/preloader-bg@4x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/behaviors.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/game.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/inner-joystick.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/inner-joystick@1.5x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/inner-joystick@2x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/inner-joystick@3x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/inner-joystick@4x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/outer-joystick.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/outer-joystick@1.5x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/outer-joystick@2x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/outer-joystick@3x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/outer-joystick@4x.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/data/resources.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/scene-0.scn");
		types.push (lime.Assets.AssetType.BINARY);
		
		
		urls.push ("assets/data/scene-0.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/scenes.xml");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		
		if (config.assetsPrefix != null) {
			
			for (i in 0...urls.length) {
				
				if (types[i] != lime.Assets.AssetType.FONT) {
					
					urls[i] = config.assetsPrefix + urls[i];
					
				}
				
			}
			
		}
		
		preloader.load (urls, types);
		#end
		
		var result = app.exec ();
		
		#if (sys && !nodejs && !emscripten)
		Sys.exit (result);
		#end
		
	}
	
	
	public static function init ():Void {
		
		var loaded = 0;
		var total = 0;
		var library_onLoad = function (__) {
			
			loaded++;
			
			if (loaded == total) {
				
				start ();
				
			}
			
		}
		
		preloader = null;
		
		
		
		
		if (total == 0) {
			
			start ();
			
		}
		
	}
	
	
	public static function main () {
		
		config = {
			
			build: "1",
			company: "Stencyl",
			file: "ld40_release2",
			fps: 65,
			name: "ld40_release2",
			orientation: "portrait",
			packageName: "com.yourcompany.gamename",
			version: "1.0",
			windows: [
				
				{
					antialiasing: 0,
					background: 0,
					borderless: false,
					depthBuffer: false,
					display: 0,
					fullscreen: false,
					hardware: true,
					height: 540,
					parameters: "{}",
					resizable: false,
					stencilBuffer: true,
					title: "ld40_release2",
					vsync: true,
					width: 960,
					x: null,
					y: null
				},
			]
			
		};
		
		#if hxtelemetry
		var telemetry = new hxtelemetry.HxTelemetry.Config ();
		telemetry.allocations = true;
		telemetry.host = "localhost";
		telemetry.app_name = config.name;
		Reflect.setField (config, "telemetry", telemetry);
		#end
		
		#if (js && html5)
		#if (munit || utest)
		openfl.Lib.embed (null, 960, 540, "000000");
		#end
		#else
		create ();
		#end
		
	}
	
	
	public static function start ():Void {
		
		var hasMain = false;
		var entryPoint = Type.resolveClass ("Universal");
		
		for (methodName in Type.getClassFields (entryPoint)) {
			
			if (methodName == "main") {
				
				hasMain = true;
				break;
				
			}
			
		}
		
		lime.Assets.initialize ();
		
		if (hasMain) {
			
			Reflect.callMethod (entryPoint, Reflect.field (entryPoint, "main"), []);
			
		} else {
			
			var instance:DocumentClass = Type.createInstance (DocumentClass, []);
			
			/*if (Std.is (instance, openfl.display.DisplayObject)) {
				
				openfl.Lib.current.addChild (cast instance);
				
			}*/
			
		}
		
		#if !flash
		if (openfl.Lib.current.stage.window.fullscreen) {
			
			openfl.Lib.current.stage.dispatchEvent (new openfl.events.FullScreenEvent (openfl.events.FullScreenEvent.FULL_SCREEN, false, false, true, true));
			
		}
		
		openfl.Lib.current.stage.dispatchEvent (new openfl.events.Event (openfl.events.Event.RESIZE, false, false));
		#end
		
	}
	
	
	#if neko
	@:noCompletion @:dox(hide) public static function __init__ () {
		
		var loader = new neko.vm.Loader (untyped $loader);
		loader.addPath (haxe.io.Path.directory (Sys.executablePath ()));
		loader.addPath ("./");
		loader.addPath ("@executable_path/");
		
	}
	#end
	
	
}


@:build(DocumentClass.build())
@:keep class DocumentClass extends Universal {}


#else


import haxe.macro.Context;
import haxe.macro.Expr;


class DocumentClass {
	
	
	macro public static function build ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				
				var method = macro {
					
					openfl.Lib.current.addChild (this);
					super ();
					dispatchEvent (new openfl.events.Event (openfl.events.Event.ADDED_TO_STAGE, false, false));
					
				}
				
				fields.push ({ name: "new", access: [ APublic ], kind: FFun({ args: [], expr: method, params: [], ret: macro :Void }), pos: Context.currentPos () });
				
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
}


#end
