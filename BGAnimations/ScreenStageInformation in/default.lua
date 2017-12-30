return Def.ActorFrame {
	LoadActor("select")..{
		StartTransitioningCommand=cmd(play);
	};
	LoadActor("../FadeFromBlack");
}