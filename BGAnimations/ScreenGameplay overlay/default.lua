local t = Def.ActorFrame{}

if IsUsingWideScreen() then
	t[#t+1] = Def.ActorFrame {
		LoadActor("LifeMeterOver")..{
			OnCommand=cmd(x,SCREEN_CENTER_X-220;y,SCREEN_TOP+23;zoomx,1.3);
		};
		LoadActor("LifeMeterOver")..{
			OnCommand=cmd(x,SCREEN_CENTER_X+221;y,SCREEN_TOP+23;zoomx,1.3);
		};
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor("LifeMeterOver")..{
			OnCommand=cmd(x,SCREEN_CENTER_X-169;y,SCREEN_TOP+23;player,PLAYER_1);
		};
		LoadActor("LifeMeterOver")..{
			OnCommand=cmd(x,SCREEN_CENTER_X+170;y,SCREEN_TOP+23;player,PLAYER_2);
		};
	};
end

return t;