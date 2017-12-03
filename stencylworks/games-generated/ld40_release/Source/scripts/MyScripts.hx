package scripts;

import com.stencyl.behavior.Script;
import scripts.SceneEvents_0;
import scripts.ActorEvents_4;
import scripts.Design_3_3_ScoutMovement;
import scripts.ActorEvents_6;
import scripts.Design_5_5_CameraFollowPlayer;


//Force all classes to compile since they aren't statically used.
class MyScripts
{
	var s:Script;
	var a:MyAssets;
	
	#if(mobile && !air)
	var stencylPreloader:scripts.StencylPreloader;
	#end
}