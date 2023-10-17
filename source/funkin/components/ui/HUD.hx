package funkin.components.ui;

import funkin.states.PlayState;
import flixel.FlxG;
import flixel.group.FlxSpriteGroup;
import forever.ui.ForeverText;

class HUD extends FlxSpriteGroup {
	public var scoreBar:ForeverText;

	public var cornerMark:ForeverText;
	public var centerMark:ForeverText;

	public var healthBar:HealthBar;

	public function new():Void {
		super();

		final engineText:String = 'FOREVER ENGINE v${Main.version}';

		cornerMark = new ForeverText(0, 0, 0, engineText, 16);
		cornerMark.setPosition(FlxG.width - (cornerMark.width + 5), 5);
		cornerMark.alignment = RIGHT;
		cornerMark.borderSize = 2.0;
		add(cornerMark);

		centerMark = new ForeverText(0, (Settings.downScroll ? FlxG.height - 40 : 10), 0, '- NO SONG [NO DIFFICULTY] -', 20);
		centerMark.alignment = CENTER;
		centerMark.borderSize = 2.0;
		centerMark.screenCenter(X);
		centerMark.antialiasing = true;
		add(centerMark);

		scoreBar = new ForeverText(0, 0, 700, "", 18);
		scoreBar.alignment = CENTER;
		scoreBar.borderSize = 1.5;
		add(scoreBar);

		updateScore();
	}

	public var divider:String = " • ";

	public function updateScore():Void {
		final game:PlayState = PlayState.current;

		var tempScore:String = "";

		tempScore = 'Score: ${game.playStats.score}';
		tempScore += divider + 'Accuracy: ${game.playStats.accuracy}%';
		tempScore += divider + 'Combo Breaks: ${game.playStats.comboBreaks}';
		tempScore += divider + 'Rank: ${game.playStats.rank}';

		scoreBar.text = '< ${tempScore} >\n';

		scoreBar.screenCenter(X);
	}
}
