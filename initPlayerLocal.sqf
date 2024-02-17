// Stamina - setting this to false disables the stamina

player enablestamina false;
player addEventHandler ["Respawn", {player enablestamina false}];

 

//Sway - the lower the number the less sway side to side you will have

player setCustomAimCoef 0.2;
player addMPEventhandler ["MPRespawn", {player setCustomAimCoef 0.2}];

 

//Recoil - the lower the number the less recoil your gun will have.

player setUnitRecoilCoefficient 0.2;
player addEventHandler ["Respawn", {player setUnitRecoilCoefficient 0.2}];