local t = Def.ActorFrame{};

t[#t+1] = Def.Actor {
	BeginCommand=function(self)
		self:queuecommand("Load");
	end;
	LoadCommand=function() SCREENMAN:GetTopScreen():Continue(); end;
};

return t;