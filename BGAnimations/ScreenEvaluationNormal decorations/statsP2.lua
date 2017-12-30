local t = Def.ActorFrame {};

local Combo = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetCurrentCombo();

local Marvelous = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W1");
local Perfect = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W2");
local Great = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W3");
local Good = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W4");
local Ok = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetHoldNoteScores("HoldNoteScore_Held");
local Miss = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_Miss");
local Almost = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetTapNoteScores("TapNoteScore_W5");

local Score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore();

--Marvelous--
t[#t+1] = LoadFont("_numbers2")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,5;y,SCREEN_CENTER_Y-188;horizalign,left);
	OnCommand=function(self)
		self:settextf(Marvelous);
		self:diffuse(color("#FFB300"));
	end;
};
--Perfect--
t[#t+1] = LoadFont("_numbers2")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,5;y,SCREEN_CENTER_Y-173;horizalign,left);
	OnCommand=function(self)
		self:settextf(Perfect);
		self:diffuse(color("#FFB300"));
	end;
};
--Great--
t[#t+1] = LoadFont("_numbers2")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,5;y,SCREEN_CENTER_Y-158;horizalign,left);
	OnCommand=function(self)
		self:settextf(Great);
		self:diffuse(color("#FFB300"));
	end;
};
--Good--
t[#t+1] = LoadFont("_numbers2")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,5;y,SCREEN_CENTER_Y-143;horizalign,left);
	OnCommand=function(self)
		self:settextf(Good);
		self:diffuse(color("#FFB300"));
	end;
};
--Almost
t[#t+1] = LoadFont("_numbers2")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,5;y,SCREEN_CENTER_Y-128;horizalign,left);
	OnCommand=function(self)
		self:settextf(Almost);
		self:diffuse(color("#FFB300"));
	end;
};
--Miss--(Almost+Miss)
t[#t+1] = LoadFont("_numbers2")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,5;y,SCREEN_CENTER_Y-113;horizalign,left);
	OnCommand=function(self)
		self:settextf(Miss);
		self:diffuse(color("#FFB300"));
	end;
};
--Ok--
t[#t+1] = LoadFont("_numbers2")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,5;y,SCREEN_CENTER_Y-98;horizalign,left);
	OnCommand=function(self)
		self:settextf(Ok);
		self:diffuse(color("#FFB300"));
	end;
};

--Percentage--
t[#t+1] = LoadFont("_numbers1")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,6;y,SCREEN_CENTER_Y-78;horizalign,left);
	OnCommand=function(self)
		self:settext(FormatPercentScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetPercentDancePoints()))
	end;
};

--Current Combo--
t[#t+1] = LoadFont("_numbers2")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,6;y,SCREEN_CENTER_Y-57;horizalign,left;addx,-8);
	OnCommand=function(self)
		self:settextf(Combo);
		self:diffuse(color("#FFB300"));
	end;
};

--Score--
t[#t+1] = LoadFont("_numbers2")..{
	InitCommand=cmd(player,PLAYER_2;zoom,1;draworder,6;y,SCREEN_CENTER_Y-42;horizalign,left;addx,-47);
	OnCommand=function(self)
		self:settextf(Score);
		self:diffuse(color("#FFB300"));
	end;
};

return t;
