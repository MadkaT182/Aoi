return Def.ActorFrame {
LoadActor("../_swoosh")..{
	StartTransitioningCommand=cmd(play);
};
LoadActor("../fader")..{
	OnCommand=cmd(Center;zoomy,0;zoomx,1.4;diffusealpha,0;decelerate,0.25;diffusealpha,1;zoom,2;sleep,.75);
};
LoadActor("../screentitlemenu background/title")..{
	OnCommand=cmd(Center;zoomy,0;zoomx,0.7;diffusealpha,0;decelerate,0.25;diffusealpha,1;zoom,1);
};
}