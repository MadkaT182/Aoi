return Def.ActorFrame {

LoadActor("../_shared background/bg")..{
	InitCommand=cmd(FullScreen;);
	OnCommand=function(self)
		local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
		local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
		self:customtexturerect(0,0,w,h);
		self:texcoordvelocity(.15,0);
	end;
};

LoadActor("bar")..{
OnCommand=cmd(x,SCREEN_CENTER_X+159;y,SCREEN_CENTER_Y-201);
};

}