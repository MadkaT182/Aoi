local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {

	LoadActor("aabg")..{
	Condition=STATSMAN:GetBestGrade() == 2;
		OnCommand=cmd(FullScreen);
	};

	LoadActor("aaabg")..{
	Condition=STATSMAN:GetBestGrade() == 1 or STATSMAN:GetBestGrade() == 0;
		OnCommand=cmd(FullScreen);
	};

	LoadActor("abg")..{
	Condition=STATSMAN:GetBestGrade() == 3;
		OnCommand=cmd(FullScreen);
	};

	LoadActor("bbg")..{
	Condition=STATSMAN:GetBestGrade() == 4;
		OnCommand=cmd(FullScreen);
	};

	LoadActor("cbg")..{
	Condition=STATSMAN:GetBestGrade() == 5;
		OnCommand=cmd(FullScreen);
	};

	LoadActor("dbg")..{
	Condition=STATSMAN:GetBestGrade() >= 6;
		OnCommand=cmd(FullScreen);
	};

	LoadActor("exbg")..{
	Condition=GAMESTATE:GetCurrentStage() == "Stage_Final" and STATSMAN:GetBestGrade() <= 2;
		OnCommand=cmd(FullScreen);
	};

	LoadActor("omesbg")..{
	Condition=GAMESTATE:IsExtraStage() and STATSMAN:GetBestGrade() <= 2;
		OnCommand=cmd(FullScreen);
	};

	LoadActor("../_black")..{
	OnCommand=cmd(zoomtowidth,244;zoomtoheight,144;x,SCREEN_CENTER_X-193;y,SCREEN_CENTER_Y-42;diffusealpha,0;hibernate,0.4;linear,0.2;diffusealpha,0.3);
	};

	LoadActor("../_black")..{
	OnCommand=cmd(zoomtowidth,244;zoomtoheight,144;x,SCREEN_CENTER_X+193;y,SCREEN_CENTER_Y-42;diffusealpha,0;hibernate,0.4;linear,0.2;diffusealpha,0.3);
	};

	LoadActor("bars")..{
	OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+125;hibernate,0.3;zoomx,2;linear,0.2;zoomx,1;diffusealpha,1);
	};

	LoadActor("box")..{
	OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-42;hibernate,0.1;linear,0.2;diffusealpha,1);
	};

	LoadActor("../_shared background/circle")..{
	OnCommand=cmd(spin;effectperiod,0.5;x,SCREEN_RIGHT-46;y,SCREEN_CENTER_Y-316;diffusealpha,0;decelerate,0.5;diffusealpha,1;addy,100);
	};

}

if STATSMAN:GetCurStageStats():AllFailed() then
	t[#t+1] = Def.ActorFrame {
		LoadActor("../ScreenGameplay failed/left")..{
		OnCommand=cmd(zoomtowidth,SCREEN_WIDTH/2;x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;diffusealpha,1;accelerate,0.3;addx,-SCREEN_WIDTH/2;addy,360;diffusealpha,0;);
		};

		LoadActor("../ScreenGameplay failed/right")..{
		OnCommand=cmd(zoomtowidth,SCREEN_WIDTH/2;x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;diffusealpha,1;accelerate,0.3;addx,SCREEN_WIDTH/2;addy,360;diffusealpha,0;);
		};

		LoadActor("../ScreenGameplay failed/fail")..{
		OnCommand=cmd(decelerate,0.3;diffusealpha,1;zoomx,2;zoomy,0;);
		};
	}
else
	t[#t+1] = Def.ActorFrame {
		LoadActor("../ScreenGameplay out/left")..{
		OnCommand=cmd(zoomtowidth,SCREEN_WIDTH/2;x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;diffusealpha,1;accelerate,0.3;addx,-SCREEN_WIDTH/2;addy,360;diffusealpha,0;);
		};

		LoadActor("../ScreenGameplay out/right")..{
		OnCommand=cmd(zoomtowidth,SCREEN_WIDTH/2;x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;diffusealpha,1;accelerate,0.3;addx,SCREEN_WIDTH/2;addy,360;diffusealpha,0;);
		};

		LoadActor("../ScreenGameplay out/eval")..{
		OnCommand=cmd(decelerate,0.3;diffusealpha,1;zoomx,2;zoomy,0;);
		};
	}
end

--Sounds
if GAMESTATE:HasEarnedExtraStage() then

local timedl = 3;

	if GAMESTATE:IsExtraStage() then
		--Extra siren
		t[#t+1] = Def.ActorFrame {
			LoadActor( "ex1bg" )..{
				OnCommand=cmd(sleep,timedl;queuecommand,'Play');
				PlayCommand=cmd(play);
			};
		};
	else
		--Encore siren
		t[#t+1] = Def.ActorFrame {
			LoadActor( "ex2bg" )..{
				OnCommand=cmd(sleep,timedl;queuecommand,'Play');
				PlayCommand=cmd(play);
			};
		};
	end

end

return t;