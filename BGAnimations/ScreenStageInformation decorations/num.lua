local t = Def.ActorFrame {};

if GAMESTATE:IsEventMode() then
	t[#t+1] = Def.ActorFrame {
		LoadActor("bgnum/event")..{};
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_1st' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("bgnum/one")..{};
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_2nd' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("bgnum/two")..{};
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_3rd' and (PREFSMAN:GetPreference("SongsPerPlay") > 3) then
	t[#t+1] = Def.ActorFrame {
		LoadActor("bgnum/three")..{};
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_4th' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("bgnum/four")..{};
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_5th' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("bgnum/five")..{};
	};
elseif GAMESTATE:GetCurrentStage() == 'Stage_Final' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("bgnum/final")..{};
	};
elseif GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
	t[#t+1] = Def.ActorFrame {
		LoadActor("bgnum/extra")..{};
	};
end;

return t;