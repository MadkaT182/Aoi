local t = Def.ActorFrame{}

t[#t+1] = LoadActor("life")..{
	OnCommand=cmd(draworder,1);
};

t[#t+1] = LoadActor("score")..{
	OnCommand=cmd(draworder,1);
};

return t
