local gc = Var("GameCommand");
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	GainFocusCommand=THEME:GetMetric(Var "LoadingScreen","InfoGainFocusCommand");
	LoseFocusCommand=THEME:GetMetric(Var "LoadingScreen","InfoLoseFocusCommand");
	LoadActor(THEME:GetPathG("SelMusNfo",gc:GetName() )) .. {
		DisabledCommand=cmd(diffuse,color("0.0,0.0,0.0,0"));
		EnabledCommand=cmd(diffuse,color("1,1,1,1"));
	};
};

t[#t+1] = Def.ActorFrame {
	GainFocusCommand=THEME:GetMetric(Var "LoadingScreen","IconGainFocusCommand");
	LoseFocusCommand=THEME:GetMetric(Var "LoadingScreen","IconLoseFocusCommand");
	LoadActor(THEME:GetPathG("SelIcon",gc:GetName() )) .. {
		DisabledCommand=cmd(diffuse,color("0.0,0.0,0.0,0"));
		EnabledCommand=cmd(diffuse,color("1,1,1,1"));
	};
};

return t