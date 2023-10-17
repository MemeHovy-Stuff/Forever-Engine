package funkin.objects;

import flixel.group.FlxSpriteGroup;

class StageBuilder extends FlxSpriteGroup {
	/** Stage Name Identifier. **/
	public var stageName:String = "stage";

	/** The default zoom of this stage. **/
	public var cameraZoom:Float = 1.05;

	/** The default hud zoom of this stage. **/
	public var hudZoom:Float = 1.0;

	public function new(stageName:String = "", cameraZoom:Float = 1.05, hudZoom:Float = 1.0):Void {
		super();

		this.stageName = stageName;
		this.cameraZoom = cameraZoom;
		this.hudZoom = hudZoom;
	}
}
