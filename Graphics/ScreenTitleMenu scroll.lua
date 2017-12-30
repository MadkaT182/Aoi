local gc = Var("GameCommand");

local item = Def.ActorFrame{
	Def.ActorFrame{
		InitCommand=cmd(y,4);
		LoadActor("title cursor")..{
			Name="Main";
			GainFocusCommand=cmd(stoptweening;linear,0.125;diffusealpha,0.5;);
			LoseFocusCommand=cmd(stoptweening;linear,0.125;diffusealpha,0;);
		};
	};

	Def.Actor{
		OffFocusedCommand=function(self)
			local idx = gc:GetIndex()+1
			setenv("TitleChoice",idx)
		end;
	};
};

return item