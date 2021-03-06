function LoadSteps(self,player)
	local difficultyStates = {
		Difficulty_Beginner	 = 0,
		Difficulty_Easy		 = 1,
		Difficulty_Medium	 = 2,
		Difficulty_Hard		 = 3,
		Difficulty_Challenge = 4,
		Difficulty_Edit		 = 5,
	};
	local selection = GAMESTATE:GetCurrentSteps(player);
	local diff = selection:GetDifficulty();
	local state = difficultyStates[diff] or 5;
	return state;
end;

local t = Def.ActorFrame{};

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
t[#t+1] = Def.ActorFrame{
	LoadActor("../_eval_difficulty icons")..{
	InitCommand=function(self)
		self:x(player == PLAYER_1 and -92 or 92);
		self:y(60);
		self:pause();
		self:setstate(LoadSteps(self,player));
	end;
	};
};
end

return t;