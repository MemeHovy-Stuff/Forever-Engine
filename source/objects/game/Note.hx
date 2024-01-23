package objects.game;

import backend.ForeverSprite;

@:structInit class NoteData {
    public var time: Float;
    public var dire: Int;
    public var sLen: Float;
    public var type: String;
}

class Note extends ForeverSprite {}