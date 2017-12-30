local function Radar()
	local function set(self,player)
		local Selection = GAMESTATE:GetCurrentSteps(player) or GAMESTATE:GetCurrentTrail(player)
		local Song = GAMESTATE:GetCurrentSong();
		if not Selection or not Song then
			self:SetEmpty( player );
			return
		end
		self:SetFromRadarValues( player, Selection:GetRadarValues(player) );
	end

	local t = Def.GrooveRadar {
		OnCommand=cmd(spin;effectperiod,3);
		OffCommand=cmd(decelerate,.5;zoom,0);
		CurrentStepsP1ChangedMessageCommand=function(self) set(self, PLAYER_1); end;
		CurrentStepsP2ChangedMessageCommand=function(self) set(self, PLAYER_2); end;
		CurrentTrailP1ChangedMessageCommand=function(self) set(self, PLAYER_1); end;
		CurrentTrailP2ChangedMessageCommand=function(self) set(self, PLAYER_2); end;
	};

	return t;
end

local t = Def.ActorFrame {};
local aspect = "Normal";

if IsUsingWideScreen() == true then
aspect = "Wide";
end

t[#t+1] = LoadActor( "../Headers/"..aspect.."/music" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+63);
};

t[#t+1] = LoadActor("../Footer")..{};

t[#t+1] = Def.ActorFrame {
	LoadActor("pills");

	LoadActor("../../graphics/screenselectmusic difficulty frame p1")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-180;y,SCREEN_CENTER_Y+107;diffusealpha,0;sleep,0.2;decelerate,0.25;diffusealpha,1);
	};

	LoadActor("../../graphics/screenselectmusic difficulty frame p1")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-180;y,SCREEN_CENTER_Y+168;diffusealpha,0;sleep,0.2;decelerate,0.25;diffusealpha,1);
	};	
};

t[#t+1] = LoadActor("../_clockbg")..{};

t[#t+1] = LoadActor("banner_frame")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-147;y,SCREEN_CENTER_Y-51;hibernate,0.2;diffusealpha,0;decelerate,0.2;diffusealpha,1);
};

t[#t+1] = LoadActor("../norm_stage")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-234;y,SCREEN_CENTER_Y-108;hibernate,0.25;diffusealpha,0;decelerate,0.2;diffusealpha,1)
};

t[#t+1] = StandardDecorationFromFileOptional("BPMDisplay","BPMDisplay");

--CDTitle
local function CDTitleUpdate(self)
	local song = GAMESTATE:GetCurrentSong();
	local cdtitle = self:GetChild("CDTitle");
	local height = cdtitle:GetHeight();

	if song then
		if song:HasCDTitle() then
			cdtitle:visible(true);
			cdtitle:Load(song:GetCDTitlePath());
			cdtitle:setsize(64,40);
		else
			cdtitle:visible(false);
		end;
	else
		cdtitle:visible(false);
	end;
end;

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(draworder,105;x,SCREEN_CENTER_X-64;y,SCREEN_CENTER_Y-82;zoom,0;sleep,0.5;decelerate,0.25;zoom,1;SetUpdateFunction,CDTitleUpdate);
	OffCommand=cmd(bouncebegin,0.15;zoomx,0);
	Def.Sprite {
		Name="CDTitle";
		OnCommand=cmd(draworder,106;wag;effectperiod,2;hibernate,0.25;diffusealpha,0;decelerate,0.2;diffusealpha,1);
		BackCullCommand=cmd(diffuse,color("0.5,0.5,0.5,1"));
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor("long")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-73;y,SCREEN_CENTER_Y;playcommand,"Refresh");
		RefreshCommand=function(self)
			self:stopeffect();
			self:stoptweening();
			local song = GAMESTATE:GetCurrentSong();
			if song and song:IsLong() then
				self:queuecommand("Show");
			else
				self:queuecommand("Hide");
			end
		end;
		ShowCommand=cmd(diffuseshift;effectperiod,.5;decelerate,.2;diffusealpha,1);
		HideCommand=cmd(stopeffect;accelerate,.2;diffusealpha,0);
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		Condition=GAMESTATE:IsCourseMode() == false;
	};
	LoadActor("marathon")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-73;y,SCREEN_CENTER_Y;playcommand,"Refresh");
		RefreshCommand=function(self)
			self:stopeffect();
			self:stoptweening();
			local song = GAMESTATE:GetCurrentSong();
			if song and song:IsMarathon() then
				self:queuecommand("Show");
			else
				self:queuecommand("Hide");
			end
		end;
		ShowCommand=cmd(diffuseshift;effectperiod,.5;decelerate,.2;diffusealpha,1);
		HideCommand=cmd(stopeffect;accelerate,.2;diffusealpha,0);
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		Condition=GAMESTATE:IsCourseMode() == false;
	};
	Radar() .. {
		BeginCommand=cmd(x,SCREEN_CENTER_X-81;y,SCREEN_CENTER_Y+50);
		Condition=GAMESTATE:IsCourseMode() == false;
	};
};

t[#t+1] = LoadActor("Diff");

t[#t+1] = Def.ActorFrame {
	--Scores
	LoadFont("_numbers2")..{
		InitCommand=cmd(player,PLAYER_1;diffuse,color("#FFB300");x,SCREEN_CENTER_X-89;y,SCREEN_CENTER_Y+125;horizalign,right);
		OnCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local steps = GAMESTATE:GetCurrentSteps(PLAYER_1);

			if song and steps then
				local score = PROFILEMAN:GetProfile(PLAYER_1):GetHighScoreList(song,steps):GetHighScores();
				local getscore = score[1];
				if getscore then
					self:settext(string.format("% 10d",getscore:GetScore()));
				else
					self:settext(string.format("% 10d","0"));
				end
			else
				self:settext(string.format("% 10d","0"));
			end

		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Refresh");
	};
	LoadFont("_numbers2")..{
		InitCommand=cmd(player,PLAYER_2;diffuse,color("#FFB300");x,SCREEN_CENTER_X-89;y,SCREEN_CENTER_Y+186;horizalign,right);
		OnCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local steps = GAMESTATE:GetCurrentSteps(PLAYER_2);

			if song and steps then
				local score = PROFILEMAN:GetProfile(PLAYER_2):GetHighScoreList(song,steps):GetHighScores();
				local getscore = score[1];
				if getscore then
					self:settext(string.format("% 10d",getscore:GetScore()));
				else
					self:settext(string.format("% 10d","0"));
				end
			else
				self:settext(string.format("% 10d","0"));
			end

		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Refresh");
	};
};

return t;