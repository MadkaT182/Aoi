return Def.ActorFrame {

LoadActor("sndfail")..{
StartTransitioningCommand=cmd(play);
};

LoadActor("../_white")..{
OnCommand=cmd(sleep,5);
};

LoadActor("left")..{
OnCommand=cmd(zoomtowidth,SCREEN_WIDTH/2;x,SCREEN_CENTER_X-SCREEN_WIDTH;y,SCREEN_CENTER_Y-360;diffusealpha,0;decelerate,0.3;diffusealpha,1;x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y);
};

LoadActor("right")..{
OnCommand=cmd(zoomtowidth,SCREEN_WIDTH/2;x,SCREEN_CENTER_X+SCREEN_WIDTH;y,SCREEN_CENTER_Y-360;diffusealpha,0;decelerate,0.3;diffusealpha,1;x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y);
};

LoadActor("fail")..{
OnCommand=cmd(Center;diffusealpha,0;zoomx,2;zoomy,0;decelerate,0.3;diffusealpha,1;zoom,1);
};

}