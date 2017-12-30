function LoadStepsDisplayGameplayFrame(self,player)
	local difficultyStates = {
		Difficulty_Beginner	 = 0,
		Difficulty_Easy		 = 2,
		Difficulty_Medium	 = 4,
		Difficulty_Hard		 = 6,
		Difficulty_Challenge = 8,
		Difficulty_Edit		 = 10,
	};
	local selection;
	if GAMESTATE:IsCourseMode() then
		-- get steps of current course entry
		selection = GAMESTATE:GetCurrentTrail(player);
		local entry = selection:GetTrailEntry(GAMESTATE:GetLoadingCourseSongIndex()+1)
		selection = entry:GetSteps()
	else
		selection = GAMESTATE:GetCurrentSteps(player);
	end;
	local diff = selection:GetDifficulty()
	local state = difficultyStates[diff] or 10;
	if player == PLAYER_2 then state = state + 1; end;
	return state;
end;

function AoiJudgmentTransformCommand( self, params )
	local y = -26
	if params.bReverse then y = y * -1 end
	self:x( -48 )
	self:y( y )
end

function AoiComboTransformCommand( self, params )
	local y = -25
	if params.bReverse then y = y * -1 end
	self:x( 61 )
	self:y( y )
end