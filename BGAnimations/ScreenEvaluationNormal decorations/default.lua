local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong();
local aspect = "Normal";

if IsUsingWideScreen() == true then
aspect = "Wide";
end

t[#t+1] = LoadActor( "../Headers/"..aspect.."/eval" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+63);
};

t[#t+1] = LoadActor("../Footer")..{};

t[#t+1] = LoadActor("../_clockbg")..{};

--P1 Decorations

if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
--Statsp1
	t[#t+1] = Def.GraphDisplay{
		InitCommand=cmd(x,SCREEN_CENTER_X-193;y,SCREEN_CENTER_Y-43),
		BeginCommand=function(self)
			self:Load("GraphDisplay")
			local playerStageStats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1)
			local stageStats = STATSMAN:GetCurStageStats()
			self: Set(stageStats, playerStageStats)
		end
	};
	t[#t+1] = LoadActor("statsP1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-132;y,SCREEN_CENTER_Y)
	};
end

--P2 Decorations
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
--Statsp2
	t[#t+1] = Def.GraphDisplay{
		InitCommand=cmd(x,SCREEN_CENTER_X+194;y,SCREEN_CENTER_Y-43),
		BeginCommand=function(self)
			self:Load("GraphDisplay")
			local playerStageStats = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2)
			local stageStats = STATSMAN:GetCurStageStats()
			self: Set(stageStats, playerStageStats)
		end
	};
	t[#t+1] = LoadActor("statsP2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+133;y,SCREEN_CENTER_Y)
	};
end

t[#t+1] = LoadActor("diff")..{
	OnCommand=cmd(Center);
};

t[#t+1] = LoadActor("grade")..{};

t[#t+1] = LoadFont("_shared1")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+160);
	OnCommand=function(self)
		self:settext(song:GetDisplayMainTitle());
		self:maxwidth(230);
	end
};

t[#t+1] = LoadFont("_shared1")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+180;zoom,.5);
	OnCommand=function(self)
		self:settext(song:GetDisplaySubTitle());
		self:maxwidth(460);
	end
};

return t