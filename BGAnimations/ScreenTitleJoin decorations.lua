return Def.ActorFrame {
	LoadFont("_shared1")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+160;queuecommand,"Refresh");
		CoinModeChangedMessageCommand=cmd(queuecommand,"Refresh");
		CoinsChangedMessageCommand=cmd(queuecommand,"Refresh");
		RefreshCommand=function(self)
			if GAMESTATE:GetCoinMode()=="CoinMode_Home" then
				self:queuecommand('PressStart');
			elseif GAMESTATE:GetCoins() >= PREFSMAN:GetPreference('CoinsPerCredit') or GAMESTATE:GetCoinMode()=="CoinMode_Free" then
				self:queuecommand('PressStart');
			else
				self:queuecommand('InsertCoin');
			end
		end;
		InsertCoinCommand=function( self )
			self:settext("INSERT COIN(S)");
		end;
		PressStartCommand=function( self )
			self:settext("PRESS START");
		end;
	}
}