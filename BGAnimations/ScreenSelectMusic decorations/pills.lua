local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	--Player1
	Def.Quad{
		OnCommand=cmd(diffusecolor,Color.Orange;zoomto,200,19;x,SCREEN_CENTER_X-141;y,SCREEN_CENTER_Y+107);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1);
			if song and stepsP1 ~= nil then
				if stepsP1:GetMeter() <= 10 then
					self:cropright(1-(stepsP1:GetMeter()/10));
				else
					self:cropright(0);
				end
			else
				self:cropright(1);
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Refresh");
	};
	Def.Quad{
		OnCommand=cmd(diffusecolor,Color.Red;zoomto,200,19;x,SCREEN_CENTER_X-141;y,SCREEN_CENTER_Y+107);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1);
			self:stopeffect();
			if song and stepsP1 ~= nil then
				if stepsP1:GetMeter() >= 11 then
					if stepsP1:GetMeter() <= 20 then
						self:cropright(1-((stepsP1:GetMeter()-10)/10));
					else
						self:cropright(0);
						self:glowshift();
					end
				else
					self:cropright(1);
				end
			else
				self:cropright(1);
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Refresh");
	};
	--Player2
	Def.Quad{
		OnCommand=cmd(diffusecolor,Color.Orange;zoomto,200,19;x,SCREEN_CENTER_X-141;y,SCREEN_CENTER_Y+168);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local stepsP2 = GAMESTATE:GetCurrentSteps(PLAYER_2);
			if song and stepsP2 ~= nil then
				if stepsP2:GetMeter() <= 10 then
					self:cropright(1-(stepsP2:GetMeter()/10));
				else
					self:cropright(0);
				end
			else
				self:cropright(1);
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Refresh");
	};
	Def.Quad{
		OnCommand=cmd(diffusecolor,Color.Red;zoomto,200,19;x,SCREEN_CENTER_X-141;y,SCREEN_CENTER_Y+168);
		RefreshCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local stepsP2 = GAMESTATE:GetCurrentSteps(PLAYER_2);
			self:stopeffect();
			if song and stepsP2 ~= nil then
				if stepsP2:GetMeter() >= 11 then
					if stepsP2:GetMeter() <= 20 then
						self:cropright(1-((stepsP2:GetMeter()-10)/10));
					else
						self:cropright(0);
						self:glowshift();
					end
				else
					self:cropright(1);
				end
			else
				self:cropright(1);
			end
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Refresh");
	};
};

return t;