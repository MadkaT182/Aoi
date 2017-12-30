return Def.ActorFrame {
	LoadActor("../fader")..{
		OnCommand=cmd(Center;zoom,2;accelerate,.1;zoomy,0;zoomx,1.4);
	};
	LoadActor("../screentitlemenu background/title")..{
		OnCommand=cmd(Center;zoomy,1;accelerate,.1;zoomy,0;zoomx,.7);
	};
}