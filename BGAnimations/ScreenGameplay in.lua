return Def.ActorFrame {
	LoadActor("ScreenStageInformation decorations/songbackground")..{
		OnCommand=cmd(FullScreen;linear,1;diffusealpha,0);
	};
}