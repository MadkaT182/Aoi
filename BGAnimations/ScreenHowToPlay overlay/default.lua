return Def.ActorFrame {

LoadActor("howtoplay")..{
OnCommand=cmd(zbuffer,1;z,20;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;zoom,4;sleep,0.0;linear,0.3;diffusealpha,1;zoom,1;sleep,1.8;linear,0.3;zoom,0.5;x,SCREEN_CENTER_X-150;y,SCREEN_CENTER_Y-180);
};

LoadActor("feet")..{
OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;addx,-SCREEN_WIDTH;sleep,2.4;decelerate,0.3;addx,SCREEN_WIDTH;sleep,2;linear,0.3;zoomy,0);
};

LoadActor("taphand")..{
OnCommand=cmd(rotationy,180;rotationz,270;x,SCREEN_CENTER_X-30;y,SCREEN_CENTER_Y-130;bob;effectperiod,1;effectmagnitude,20,0,0;diffusealpha,0;sleep,6;linear,0;diffusealpha,1;sleep,2;linear,0;diffusealpha,0);
};

LoadActor("tapmessage")..{
OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+40;diffusealpha,0;sleep,6;linear,0;diffusealpha,1;sleep,2;linear,0;diffusealpha,0);
};

LoadActor("taphand")..{
OnCommand=cmd(x,SCREEN_CENTER_X+128;y,SCREEN_CENTER_Y-60;bob;effectperiod,1;effectmagnitude,0,20,0;diffusealpha,0;sleep,9.7;linear,0;diffusealpha,1;sleep,1.7;linear,0;diffusealpha,0);
};

LoadActor("tapmessage")..{
OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+40;diffusealpha,0;sleep,9.7;linear,0;diffusealpha,1;sleep,1.7;linear,0;diffusealpha,0);
};

LoadActor("taphand")..{
OnCommand=cmd(x,SCREEN_CENTER_X+192;y,SCREEN_CENTER_Y-60;bob;effectperiod,1;effectmagnitude,0,20,0;diffusealpha,0;sleep,12.7;linear,0;diffusealpha,1;sleep,1.7;linear,0;diffusealpha,0);
};

LoadActor("tapmessage")..{
OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+40;diffusealpha,0;sleep,12.7;linear,0;diffusealpha,1;sleep,1.7;linear,0;diffusealpha,0);
};

LoadActor("taphand")..{
OnCommand=cmd(x,SCREEN_CENTER_X+64;y,SCREEN_CENTER_Y-60;bob;effectperiod,1;effectmagnitude,0,20,0;diffusealpha,0;sleep,15.7;linear,0;diffusealpha,1;sleep,1.7;linear,0;diffusealpha,0);
};

LoadActor("tapmessage")..{
OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+40;diffusealpha,0;sleep,15.7;linear,0;diffusealpha,1;sleep,1.7;linear,0;diffusealpha,0);
};

LoadActor("jumphands")..{
OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y-60;bob;effectperiod,1;effectmagnitude,0,20,0;diffusealpha,0;sleep,18.7;linear,0;diffusealpha,1;sleep,1.7;linear,0;diffusealpha,0);
};

LoadActor("jumpmessage")..{
OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+40;diffusealpha,0;sleep,18.7;linear,0;diffusealpha,1;sleep,1.7;linear,0;diffusealpha,0);
};

LoadActor("taphand")..{
OnCommand=cmd(x,SCREEN_CENTER_X+228;y,SCREEN_CENTER_Y-130;bob;effectperiod,1;effectmagnitude,0,20,0;diffusealpha,0;sleep,22.7;linear,0;diffusealpha,1;sleep,1.7;linear,0;diffusealpha,0);
};

LoadActor("missmessage")..{
OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+40;diffusealpha,0;sleep,22.7;linear,0;diffusealpha,1;sleep,22.7;linear,0;diffusealpha,0);
};

}