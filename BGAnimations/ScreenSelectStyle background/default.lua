return Def.ActorFrame {

LoadActor("../_shared background")..{};

LoadActor("pix")..{
OnCommand=cmd(x,SCREEN_CENTER_X+90;y,SCREEN_CENTER_Y+47;diffusealpha,0;addx,200;zoomy,0;decelerate,0.3;diffusealpha,1;zoomy,1;addx,-200);
};

}