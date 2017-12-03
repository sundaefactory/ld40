package;


import lime.app.Config;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {
	
	
	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	
	
	public static function init (config:Config):Void {
		
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
		var rootPath = null;
		
		if (config != null && Reflect.hasField (config, "assetsPrefix")) {
			
			rootPath = Reflect.field (config, "assetsPrefix");
			
		}
		
		if (rootPath == null) {
			
			#if (ios || tvos)
			rootPath = "assets/";
			#elseif (windows && !cs)
			rootPath = FileSystem.absolutePath (haxe.io.Path.directory (#if (haxe_ver >= 3.3) Sys.programPath () #else Sys.executablePath () #end)) + "/";
			#else
			rootPath = "";
			#end
			
		}
		
		Assets.defaultRootPath = rootPath;
		
		#if (openfl && !flash)
		
		#end
		
		var data, manifest, library;
		
		
		
		
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_graphics_1_5x_sprite_5_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1_5x_sprite_5_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1_5x_sprite_5_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1_5x_sprite_5_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1_5x_sprite_7_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1_5x_tileset_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1x_sprite_5_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1x_sprite_5_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1x_sprite_5_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1x_sprite_5_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1x_sprite_7_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_1x_tileset_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_2x_sprite_5_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_2x_sprite_5_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_2x_sprite_5_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_2x_sprite_5_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_2x_sprite_7_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_2x_tileset_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_3x_sprite_5_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_3x_sprite_5_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_3x_sprite_5_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_3x_sprite_5_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_3x_sprite_7_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_3x_tileset_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_4x_sprite_5_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_4x_sprite_5_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_4x_sprite_5_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_4x_sprite_5_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_4x_sprite_7_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_4x_tileset_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_default_font_fnt extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_graphics_default_font_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_preloader_badge_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_preloader_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_preloader_bg_1_5x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_preloader_bg_2x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_preloader_bg_3x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_graphics_preloader_bg_4x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_behaviors_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_game_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_inner_joystick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_inner_joystick_1_5x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_inner_joystick_2x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_inner_joystick_3x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_inner_joystick_4x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_outer_joystick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_outer_joystick_1_5x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_outer_joystick_2x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_outer_joystick_3x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_outer_joystick_4x_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }@:keep @:bind #if display private #end class __ASSET__assets_data_resources_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_scene_0_scn extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_scene_0_xml extends flash.utils.ByteArray { }
@:keep @:bind #if display private #end class __ASSET__assets_data_scenes_xml extends flash.utils.ByteArray { }


#elseif (desktop || cpp)

@:image("Assets/graphics/1.5x/sprite-5-0.png") #if display private #end class __ASSET__assets_graphics_1_5x_sprite_5_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/1.5x/sprite-5-1.png") #if display private #end class __ASSET__assets_graphics_1_5x_sprite_5_1_png extends lime.graphics.Image {}
@:image("Assets/graphics/1.5x/sprite-5-2.png") #if display private #end class __ASSET__assets_graphics_1_5x_sprite_5_2_png extends lime.graphics.Image {}
@:image("Assets/graphics/1.5x/sprite-5-3.png") #if display private #end class __ASSET__assets_graphics_1_5x_sprite_5_3_png extends lime.graphics.Image {}
@:image("Assets/graphics/1.5x/sprite-7-0.png") #if display private #end class __ASSET__assets_graphics_1_5x_sprite_7_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/1.5x/tileset-3.png") #if display private #end class __ASSET__assets_graphics_1_5x_tileset_3_png extends lime.graphics.Image {}
@:image("Assets/graphics/1x/sprite-5-0.png") #if display private #end class __ASSET__assets_graphics_1x_sprite_5_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/1x/sprite-5-1.png") #if display private #end class __ASSET__assets_graphics_1x_sprite_5_1_png extends lime.graphics.Image {}
@:image("Assets/graphics/1x/sprite-5-2.png") #if display private #end class __ASSET__assets_graphics_1x_sprite_5_2_png extends lime.graphics.Image {}
@:image("Assets/graphics/1x/sprite-5-3.png") #if display private #end class __ASSET__assets_graphics_1x_sprite_5_3_png extends lime.graphics.Image {}
@:image("Assets/graphics/1x/sprite-7-0.png") #if display private #end class __ASSET__assets_graphics_1x_sprite_7_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/1x/tileset-3.png") #if display private #end class __ASSET__assets_graphics_1x_tileset_3_png extends lime.graphics.Image {}
@:image("Assets/graphics/2x/sprite-5-0.png") #if display private #end class __ASSET__assets_graphics_2x_sprite_5_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/2x/sprite-5-1.png") #if display private #end class __ASSET__assets_graphics_2x_sprite_5_1_png extends lime.graphics.Image {}
@:image("Assets/graphics/2x/sprite-5-2.png") #if display private #end class __ASSET__assets_graphics_2x_sprite_5_2_png extends lime.graphics.Image {}
@:image("Assets/graphics/2x/sprite-5-3.png") #if display private #end class __ASSET__assets_graphics_2x_sprite_5_3_png extends lime.graphics.Image {}
@:image("Assets/graphics/2x/sprite-7-0.png") #if display private #end class __ASSET__assets_graphics_2x_sprite_7_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/2x/tileset-3.png") #if display private #end class __ASSET__assets_graphics_2x_tileset_3_png extends lime.graphics.Image {}
@:image("Assets/graphics/3x/sprite-5-0.png") #if display private #end class __ASSET__assets_graphics_3x_sprite_5_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/3x/sprite-5-1.png") #if display private #end class __ASSET__assets_graphics_3x_sprite_5_1_png extends lime.graphics.Image {}
@:image("Assets/graphics/3x/sprite-5-2.png") #if display private #end class __ASSET__assets_graphics_3x_sprite_5_2_png extends lime.graphics.Image {}
@:image("Assets/graphics/3x/sprite-5-3.png") #if display private #end class __ASSET__assets_graphics_3x_sprite_5_3_png extends lime.graphics.Image {}
@:image("Assets/graphics/3x/sprite-7-0.png") #if display private #end class __ASSET__assets_graphics_3x_sprite_7_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/3x/tileset-3.png") #if display private #end class __ASSET__assets_graphics_3x_tileset_3_png extends lime.graphics.Image {}
@:image("Assets/graphics/4x/sprite-5-0.png") #if display private #end class __ASSET__assets_graphics_4x_sprite_5_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/4x/sprite-5-1.png") #if display private #end class __ASSET__assets_graphics_4x_sprite_5_1_png extends lime.graphics.Image {}
@:image("Assets/graphics/4x/sprite-5-2.png") #if display private #end class __ASSET__assets_graphics_4x_sprite_5_2_png extends lime.graphics.Image {}
@:image("Assets/graphics/4x/sprite-5-3.png") #if display private #end class __ASSET__assets_graphics_4x_sprite_5_3_png extends lime.graphics.Image {}
@:image("Assets/graphics/4x/sprite-7-0.png") #if display private #end class __ASSET__assets_graphics_4x_sprite_7_0_png extends lime.graphics.Image {}
@:image("Assets/graphics/4x/tileset-3.png") #if display private #end class __ASSET__assets_graphics_4x_tileset_3_png extends lime.graphics.Image {}
@:file("Assets/graphics/default-font.fnt") #if display private #end class __ASSET__assets_graphics_default_font_fnt extends haxe.io.Bytes {}
@:image("Assets/graphics/default-font.png") #if display private #end class __ASSET__assets_graphics_default_font_png extends lime.graphics.Image {}
@:image("Assets/graphics/preloader-badge.png") #if display private #end class __ASSET__assets_graphics_preloader_badge_png extends lime.graphics.Image {}
@:image("Assets/graphics/preloader-bg.png") #if display private #end class __ASSET__assets_graphics_preloader_bg_png extends lime.graphics.Image {}
@:image("Assets/graphics/preloader-bg@1.5x.png") #if display private #end class __ASSET__assets_graphics_preloader_bg_1_5x_png extends lime.graphics.Image {}
@:image("Assets/graphics/preloader-bg@2x.png") #if display private #end class __ASSET__assets_graphics_preloader_bg_2x_png extends lime.graphics.Image {}
@:image("Assets/graphics/preloader-bg@3x.png") #if display private #end class __ASSET__assets_graphics_preloader_bg_3x_png extends lime.graphics.Image {}
@:image("Assets/graphics/preloader-bg@4x.png") #if display private #end class __ASSET__assets_graphics_preloader_bg_4x_png extends lime.graphics.Image {}
@:file("Assets/data/behaviors.xml") #if display private #end class __ASSET__assets_data_behaviors_xml extends haxe.io.Bytes {}
@:file("Assets/data/game.xml") #if display private #end class __ASSET__assets_data_game_xml extends haxe.io.Bytes {}
@:image("Assets/data/inner-joystick.png") #if display private #end class __ASSET__assets_data_inner_joystick_png extends lime.graphics.Image {}
@:image("Assets/data/inner-joystick@1.5x.png") #if display private #end class __ASSET__assets_data_inner_joystick_1_5x_png extends lime.graphics.Image {}
@:image("Assets/data/inner-joystick@2x.png") #if display private #end class __ASSET__assets_data_inner_joystick_2x_png extends lime.graphics.Image {}
@:image("Assets/data/inner-joystick@3x.png") #if display private #end class __ASSET__assets_data_inner_joystick_3x_png extends lime.graphics.Image {}
@:image("Assets/data/inner-joystick@4x.png") #if display private #end class __ASSET__assets_data_inner_joystick_4x_png extends lime.graphics.Image {}
@:image("Assets/data/outer-joystick.png") #if display private #end class __ASSET__assets_data_outer_joystick_png extends lime.graphics.Image {}
@:image("Assets/data/outer-joystick@1.5x.png") #if display private #end class __ASSET__assets_data_outer_joystick_1_5x_png extends lime.graphics.Image {}
@:image("Assets/data/outer-joystick@2x.png") #if display private #end class __ASSET__assets_data_outer_joystick_2x_png extends lime.graphics.Image {}
@:image("Assets/data/outer-joystick@3x.png") #if display private #end class __ASSET__assets_data_outer_joystick_3x_png extends lime.graphics.Image {}
@:image("Assets/data/outer-joystick@4x.png") #if display private #end class __ASSET__assets_data_outer_joystick_4x_png extends lime.graphics.Image {}
@:file("Assets/data/resources.xml") #if display private #end class __ASSET__assets_data_resources_xml extends haxe.io.Bytes {}
@:file("Assets/data/scene-0.scn") #if display private #end class __ASSET__assets_data_scene_0_scn extends haxe.io.Bytes {}
@:file("Assets/data/scene-0.xml") #if display private #end class __ASSET__assets_data_scene_0_xml extends haxe.io.Bytes {}
@:file("Assets/data/scenes.xml") #if display private #end class __ASSET__assets_data_scenes_xml extends haxe.io.Bytes {}



#else



#end

#if (openfl && !flash)



#end
#end