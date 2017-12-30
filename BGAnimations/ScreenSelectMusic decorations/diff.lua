local function DifficultyIcons(pn)
	local function set(self, player)
		if player and player ~= pn then return end
		local Selection = GAMESTATE:GetCurrentSteps(pn) or GAMESTATE:GetCurrentTrail(pn)

		if not Selection then
			self:Unset();
			return
		end
		local dc = Selection:GetDifficulty()
		self:SetFromDifficulty( dc );
	end

	local t = Def.DifficultyIcon {
		File="d_icons 1x6";
		InitCommand=function(self)
			self:player( pn );
			self:SetPlayer( pn );
		end;

		CurrentStepsP1ChangedMessageCommand=function(self) set(self, PLAYER_1); end;
		CurrentStepsP2ChangedMessageCommand=function(self) set(self, PLAYER_2); end;
		CurrentTrailP1ChangedMessageCommand=function(self) set(self, PLAYER_1); end;
		CurrentTrailP2ChangedMessageCommand=function(self) set(self, PLAYER_2); end;
	};
	return t;
end

local t = Def.ActorFrame {
	DifficultyIcons(PLAYER_1) .. {
		BeginCommand=cmd(x,SCREEN_CENTER_X-283;y,SCREEN_CENTER_Y+107;draworder,2);
		OffCommand=cmd(diffusealpha,0);
		ToggleCommand=function(self)
			if not GAMESTATE:GetCurrentSong() then self:visible(false)
			else self:visible(true)
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Toggle");
		Condition=GAMESTATE:IsHumanPlayer(PLAYER_1);
	};
	DifficultyIcons(PLAYER_2) .. {
		BeginCommand=cmd(x,SCREEN_CENTER_X-283;y,SCREEN_CENTER_Y+168;draworder,2);
		OffCommand=cmd(diffusealpha,0);
		ToggleCommand=function(self)
			if not GAMESTATE:GetCurrentSong() then self:visible(false);
			else self:visible(true);
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Toggle");
		Condition=GAMESTATE:IsHumanPlayer(PLAYER_2);
	};
};

return t;