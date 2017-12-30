return Def.ActorFrame {

LoadActor("ready")..{
OnCommand=cmd(Center;diffusealpha,1;zoomx,3;zoomy,0;decelerate,0.25;zoomy,1;zoomx,1;sleep,1.5;accelerate,0.25;zoomy,0;zoomx,3;diffusealpha,0);
};

}