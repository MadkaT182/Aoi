return Def.ActorFrame {

LoadActor("../_shared background")..{};

LoadActor("../_clockbg")..{};

LoadActor("back")..{
OnCommand=cmd(Center,diffusealpha,0;zoom,1.5;decelerate,0.2;zoom,1;diffusealpha,1);
};

}