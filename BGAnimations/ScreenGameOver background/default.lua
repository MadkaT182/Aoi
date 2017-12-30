return Def.ActorFrame {

LoadActor("over")..{
OnCommand=cmd(FullScreen;zoom,1.3;zoomtowidth,SCREEN_WIDTH*1.3;diffusealpha,0;decelerate,0.5;zoom,1;zoomtowidth,SCREEN_WIDTH;diffusealpha,1;);
};

}