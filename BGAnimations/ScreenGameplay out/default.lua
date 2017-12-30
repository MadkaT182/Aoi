local t = Def.ActorFrame{};

if not GAMESTATE:IsDemonstration() then

t[#t+1] = Def.ActorFrame {
LoadActor("../_white")..{
OnCommand=cmd(sleep,2);
};

LoadActor("left")..{
OnCommand=cmd(zoomtowidth,SCREEN_WIDTH/2;x,SCREEN_CENTER_X-SCREEN_WIDTH;y,SCREEN_CENTER_Y-360;diffusealpha,0;decelerate,0.3;diffusealpha,1;x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y);
};

LoadActor("right")..{
OnCommand=cmd(zoomtowidth,SCREEN_WIDTH/2;x,SCREEN_CENTER_X+SCREEN_WIDTH;y,SCREEN_CENTER_Y-360;diffusealpha,0;decelerate,0.3;diffusealpha,1;x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y);
};

LoadActor("eval")..{
OnCommand=cmd(Center;diffusealpha,0;zoomx,2;zoomy,0;decelerate,0.3;diffusealpha,1;zoom,1);
};

}

end

return t;