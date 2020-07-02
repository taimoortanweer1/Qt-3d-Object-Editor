.pragma library

var filename = [
            [["bstep2d",7],["lx1","ly1","lx0","ly0","N","M","maxPhysT"],[5,0.75,20.0,1.5,60,50,40]],
            [["bifurcation3d",7],["Re","N","iTperiod","diffusion","radius","partRho","marPhys"],[50,19,100,0.00001,0.00015,998.2,10]]

        ];

var paramSpin = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];


// bifurcation3d
//T Re = 50;               // Reynolds number
//int N = 19;              // resolution of the model
//int iTperiod = 100;      // amount of timesteps when new boundary conditions are reset and results are visualized
//T diffusion = 1.e-6;     // diffusion coefficient for advection-diffusion equation
//T radius = 1.5e-04;      // particles radius
//T partRho = 998.2;       // particles density
//T maxPhysT = 10.;        // max. simulation time in s, SI unit

/*
  //bstep2d
    lx1   = conv[0];    // length of step in meters
    ly1   = conv[1];   // height of step in meter
    lx0   = conv[2];   // length of channel in meter
    ly0   = conv[3];    // height of channel in meter
    N = conv[4];        // resolution of the model
    M = conv[5];        // resolution of the model
    maxPhysT = conv[6]; // max. simulation time in s, SI unit

*/
