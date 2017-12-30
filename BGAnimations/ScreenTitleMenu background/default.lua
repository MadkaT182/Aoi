return Def.ActorFrame {

LoadActor("../_shared background")..{};

LoadActor("bars")..{
OnCommand=cmd(x,SCREEN_CENTER_X-4;y,SCREEN_CENTER_Y+21;diffusealpha,0;linear,0.2;diffusealpha,1);
};

LoadActor("bars")..{
OnCommand=cmd(hibernate,0.05;x,SCREEN_CENTER_X-4;y,SCREEN_CENTER_Y+49;diffusealpha,0;linear,0.1;diffusealpha,1);
};

LoadActor("bars")..{
OnCommand=cmd(hibernate,0.1;x,SCREEN_CENTER_X-4;y,SCREEN_CENTER_Y+77;diffusealpha,0;linear,0.1;diffusealpha,1);
};

LoadActor("bars")..{
OnCommand=cmd(hibernate,0.15;x,SCREEN_CENTER_X-4;y,SCREEN_CENTER_Y+105;diffusealpha,0;linear,0.1;diffusealpha,1);
};

LoadActor("bars")..{
OnCommand=cmd(hibernate,0.2;x,SCREEN_CENTER_X-4;y,SCREEN_CENTER_Y+133;diffusealpha,0;linear,0.1;diffusealpha,1);
};

LoadActor("by")..{
OnCommand=cmd(hibernate,0.35;x,SCREEN_CENTER_X-4;y,SCREEN_CENTER_Y+215;diffusealpha,0;linear,0.1;diffusealpha,1);
};

LoadActor("title")..{
OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-113;diffusealpha,0;linear,0.3;diffusealpha,1);
};

LoadActor("text")..{
OnCommand=cmd(hibernate,0.35;x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y+102;diffusealpha,0;linear,0.2;diffusealpha,1);
};

}