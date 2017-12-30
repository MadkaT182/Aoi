return Def.ActorFrame {

LoadActor("../_shared background")..{};

LoadActor("data")..{
OnCommand=cmd(x,SCREEN_CENTER_X-182;y,SCREEN_CENTER_Y+36;queuecommand,"Animate");
AnimateCommand=cmd(decelerate,1;addy,-3;accelerate,1;addy,3;decelerate,1;addy,3;accelerate,1;addy,-3;queuecommand,"Rep");
RepCommand=cmd(queuecommand,"Animate");
};

LoadActor("score")..{
OnCommand=cmd(x,SCREEN_CENTER_X-66;y,SCREEN_CENTER_Y+154;diffusealpha,0;decelerate,0.25;diffusealpha,1);
};

}