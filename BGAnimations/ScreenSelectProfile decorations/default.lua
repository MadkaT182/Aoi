local t = Def.ActorFrame {};
local aspect = "Normal";

if IsUsingWideScreen() == true then
aspect = "Wide";
end

t[#t+1] = LoadActor( "../Headers/"..aspect.."/profile" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+63);
};

t[#t+1] = LoadActor("profileframe")..{
	InitCommand=cmd(Center);
};

t[#t+1] = LoadActor("../Footer")..{};

t[#t+1] = LoadActor("../_clockbg")..{};

return t;