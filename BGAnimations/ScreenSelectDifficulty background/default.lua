return Def.ActorFrame {

LoadActor("../_shared background")..{};

LoadActor("lesson")..{
OnCommand=cmd(x,SCREEN_CENTER_X-240;y,SCREEN_CENTER_Y+61;addx,-320;decelerate,0.5;addx,320);
};

LoadActor("light")..{
OnCommand=cmd(x,SCREEN_CENTER_X-80;y,SCREEN_CENTER_Y+61;addx,-320;decelerate,0.3;addx,320);
};

LoadActor("normal")..{
OnCommand=cmd(x,SCREEN_CENTER_X+80;y,SCREEN_CENTER_Y+45;addx,320;decelerate,0.4;addx,-320);
};

LoadActor("hyper")..{
OnCommand=cmd(x,SCREEN_CENTER_X+240;y,SCREEN_CENTER_Y+45;addx,320;decelerate,0.6;addx,-320);
};

}