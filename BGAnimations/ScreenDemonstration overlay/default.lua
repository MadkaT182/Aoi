return Def.ActorFrame {

LoadActor("demo")..{
OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+160;queuecommand,"Animate");
AnimateCommand=cmd(diffusealpha,0;zoom,1.3;decelerate,0.5;diffusealpha,1;zoom,1;accelerate,0.5;diffusealpha,0;zoom,1.3;queuecommand,"Rep");
RepCommand=cmd(queuecommand,"Animate");
};

}