return Def.ActorFrame {

LoadActor("base")..{
OnCommand=cmd(zoomtowidth,SCREEN_WIDTH;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-11);
};

LoadActor("left")..{
OnCommand=cmd(x,SCREEN_LEFT+89;y,SCREEN_BOTTOM-11);
};

LoadActor("right")..{
OnCommand=cmd(x,SCREEN_RIGHT-88;y,SCREEN_BOTTOM-11);
};

}