local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("art")..{
		OnCommand=cmd(addx,290;addy,-91;glowshift);
		OffCommand=cmd(linear,0.1175;zoomy,0);
	};
};

return t;