return Def.Sprite {
	OnCommand=function (self)
		local course = GAMESTATE:GetCurrentCourse();
		if GAMESTATE:IsCourseMode() then
			if course:GetBackgroundPath() then
				self:Load(course:GetBackgroundPath())
			else
				self:Load(THEME:GetPathG("", "Common fallback background"));
			end;
		else
		local song = GAMESTATE:GetCurrentSong();
			if song then
				if song:HasBackground() then
					self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
				else
					self:Load(THEME:GetPathG("","Common fallback background"));
				end;
			else
				self:Load(THEME:GetPathG("","Common fallback background"));
		end;
	end;
	end;
};