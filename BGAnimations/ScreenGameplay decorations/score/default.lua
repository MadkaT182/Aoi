return Def.ActorFrame {

LoadActor("base")..{
OnCommand=cmd(zoomtowidth,SCREEN_WIDTH;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-22);
};

LoadActor("left")..{
OnCommand=cmd(x,SCREEN_LEFT+132;y,SCREEN_BOTTOM-22);
};

LoadActor("right")..{
OnCommand=cmd(x,SCREEN_RIGHT-131;y,SCREEN_BOTTOM-22);
};

}