return Def.ActorFrame {

LoadActor("circle")..{
OnCommand=cmd(spin;effectperiod,0.5;x,SCREEN_RIGHT-46;y,SCREEN_CENTER_Y-316;diffusealpha,0;decelerate,0.5;diffusealpha,1;addy,100);
};

LoadActor("../screenoptions background/time")..{
OnCommand=cmd(x,SCREEN_RIGHT-34;y,SCREEN_CENTER_Y-216;addy,-100;diffusealpha,0;decelerate,0.5;diffusealpha,1;addy,100);
};

}