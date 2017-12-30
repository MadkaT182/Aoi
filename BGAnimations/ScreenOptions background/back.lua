local t = Def.ActorFrame{};

if IsUsingWideScreen() == true then
	t[#t+1] = Def.ActorFrame {
		LoadActor("wback")..{};
	}
else
	t[#t+1] = Def.ActorFrame {
		LoadActor("nback")..{};
	}
end

return t;