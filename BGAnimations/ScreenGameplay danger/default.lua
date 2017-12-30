local t = Def.ActorFrame {

	InitCommand=cmd(diffusealpha,0);
	HealthStateChangedMessageCommand=function(self, param)
		if param.HealthState == "HealthState_Danger" then
			self:diffusealpha(1)
		else
			self:diffusealpha(0)
		end
	end;

	LoadActor("warn")..{
		OnCommand=cmd(FullScreen);
	};

	LoadActor("warn")..{
		OnCommand=cmd(queuecommand,"Anim");
		AnimCommand=cmd(FullScreen;zoom,1.5;zoomtowidth,SCREEN_WIDTH*1.5;diffusealpha,0;decelerate,1.5;zoom,1;zoomtowidth,SCREEN_WIDTH;diffusealpha,1;queuecommand,"Rep");
		RepCommand=cmd(queuecommand, "Anim");
	};

}

return t;