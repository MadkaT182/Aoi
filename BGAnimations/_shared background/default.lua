return Def.ActorFrame {

LoadActor("bg")..{
	InitCommand=cmd(FullScreen;);
	OnCommand=function(self)
		local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
		local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
		self:customtexturerect(0,0,w,h);
		self:texcoordvelocity(.15,0);
	end;
};

}