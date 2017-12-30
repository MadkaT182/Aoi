return Def.ActorFrame {

LoadActor("../ScreenEvaluationNormal background/aabg")..{
	OnCommand=cmd(FullScreen);
};

LoadActor("../_black")..{
OnCommand=cmd(zoomtowidth,244;zoomtoheight,144;x,SCREEN_CENTER_X-193;y,SCREEN_CENTER_Y-42;diffusealpha,0;hibernate,0.4;linear,0.2;diffusealpha,0.3);
};

LoadActor("../_black")..{
OnCommand=cmd(zoomtowidth,244;zoomtoheight,144;x,SCREEN_CENTER_X+193;y,SCREEN_CENTER_Y-42;diffusealpha,0;hibernate,0.4;linear,0.2;diffusealpha,0.3);
};

LoadActor("../ScreenEvaluationNormal background/bars")..{
OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+125;hibernate,0.3;zoomx,2;linear,0.2;zoomx,1;diffusealpha,1);
};

LoadActor("../ScreenEvaluationNormal background/box")..{
OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-42;hibernate,0.1;linear,0.2;diffusealpha,1);
};

}