local song = GAMESTATE:GetCurrentSong();

local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	LoadActor("../_shared background/bg")..{
		OnCommand=cmd(FullScreen);
	};
};

if GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
t[#t+1] = Def.ActorFrame {
	LoadActor("../stars0")..{
	Condition=song:GetDisplayFullTitle() == ("SCREAM SQUAD -for X-") or song:GetDisplayFullTitle() == ("MEI -for X-") or song:GetDisplayFullTitle() == ("SCREAM SQUAD") or song:GetDisplayFullTitle() == ("MEI");
	OnCommand=cmd(FullScreen);
	};
};
end;

t[#t+1] = Def.ActorFrame {
	LoadActor("../stage/b-back")..{
	OnCommand=cmd(zoomtowidth,SCREEN_WIDTH;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+121;diffusealpha,0;decelerate,0.2;diffusealpha,0.4;sleep,1.3;accelerate,0.25;diffusealpha,0);
	};

	LoadActor("num")..{
	OnCommand=cmd(x,SCREEN_LEFT+183;y,SCREEN_CENTER_Y-23;addx,-200;diffusealpha,0;decelerate,0.3;diffusealpha,0.4;addx,200;sleep,1.2;accelerate,0.25;diffusealpha,0);
	};

	LoadActor("../stage/stuff")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;addx,-200;y,SCREEN_CENTER_Y+107;diffusealpha,0;decelerate,0.3;diffusealpha,1;addx,200;sleep,1.2;accelerate,0.25;diffusealpha,0);
	};
};

if GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
t[#t+1] = Def.ActorFrame {
	LoadActor("../starsov")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;addx,-200;y,SCREEN_CENTER_Y+95;diffusealpha,0;decelerate,0.3;diffusealpha,1;addx,200;sleep,1.2;accelerate,0.25;diffusealpha,0);
	Condition=song:GetDisplayFullTitle() == ("SCREAM SQUAD -for X-") or song:GetDisplayFullTitle() == ("MEI -for X-") or song:GetDisplayFullTitle() == ("SCREAM SQUAD") or song:GetDisplayFullTitle() == ("MEI");
	};
};
end;

t[#t+1] = Def.ActorFrame {
	LoadActor("../stage/ring")..{
	OnCommand=cmd(Center,zoom,0;diffusealpha,0;accelerate,0.7;zoom,10;diffusealpha,1;hibernate,1.05);
	};

	LoadActor("../stage/arrow")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+63;y,SCREEN_CENTER_Y-38;diffusealpha,0.7;hibernate,0.2;zoom,0;decelerate,0.5;zoom,1;addx,SCREEN_WIDTH*0.40;addy,-250);
	};

	LoadActor("../stage/arrow")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+113;y,SCREEN_CENTER_Y+12;diffusealpha,0.7;hibernate,0.4;zoom,0;decelerate,0.6;zoom,0.5;addx,SCREEN_WIDTH*0.421;addy,-270);
	};

	LoadActor("songbanner")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-164;y,SCREEN_CENTER_Y+142;zoomtowidth,256;zoomtoheight,80;addx,-200;diffusealpha,0;decelerate,0.3;diffusealpha,1;addx,200;sleep,1.2;accelerate,0.25;diffusealpha,0);
	};

	LoadActor("songbackground")..{
	OnCommand=cmd(FullScreen;hibernate,1.5;zoomtowidth,SCREEN_WIDTH*1.09;zoomtoheight,0;diffusealpha,0;accelerate,0.25;diffusealpha,1;zoomtoheight,480;zoomtowidth,SCREEN_WIDTH);
	};

};

	--Song Information
	t[#t+1] = LoadFont("_shared1") .. {
		InitCommand=function(self)
			local vSong = GAMESTATE:GetCurrentSong();
			local vCourse = GAMESTATE:GetCurrentCourse();
			local sText = ""
			sText = vSong:GetDisplayFullTitle()
			self:settext( sText );
			self:horizalign(left);
			self:maxwidth(309);
			self:x(SCREEN_CENTER_X-21);
			self:y(SCREEN_CENTER_Y+117);
			self:draworder(1);
		end;
		OnCommand=cmd(shadowlength,0;addx,-200;diffusealpha,0;decelerate,0.3;diffusealpha,1;addx,200;sleep,1.2;accelerate,0.25;diffusealpha,0);
	}

	--Artist Information
	t[#t+1] = LoadFont("_shared1") .. {
		InitCommand=function(self)
			local vSong = GAMESTATE:GetCurrentSong();
			local vCourse = GAMESTATE:GetCurrentCourse();
			local sText = ""
			sText = vSong:GetDisplayArtist()
			self:settext( sText );
			self:horizalign(left);
			self:maxwidth(309);
			self:x(SCREEN_CENTER_X-21);
			self:y(SCREEN_CENTER_Y+157);
			self:draworder(1);
		end;
		OnCommand=cmd(shadowlength,0;addx,-200;diffusealpha,0;decelerate,0.3;diffusealpha,1;addx,200;sleep,1.2;accelerate,0.25;diffusealpha,0;);
	}

return t;