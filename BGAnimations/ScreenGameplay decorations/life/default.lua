local t = Def.ActorFrame{}

if IsUsingWideScreen() then
	t[#t+1] = LoadActor("frame")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+24;zoomx,1.3);
	};
else
	t[#t+1] = LoadActor("frame")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+24);
	};
end

t[#t+1] = LoadActor("stage")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+19);
};

return t;