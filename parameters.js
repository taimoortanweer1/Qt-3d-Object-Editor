.pragma library

var filename = [
            [
                ["bstep2d",7],
                ["lx1","ly1","lx0","ly0","N","M","maxPhysT"],
                [5,0.75,20.0,1.5,60,50,40]
            ],
            [["bifurcation3d",7],["Re","N","iTperiod","diffusion","radius","partRho","marPhys"],[50,19,100,0.00001,0.00015,998.2,10]],
            [["microFluidics2d",17],["N","nx","ny","inSize","inletV1","inletV2","inletV3","outletV","alpha","kappa1","kappa2","kappa3","gamma","h1","h2","h3","maxIter"],[100,800,100,175,0.00056,0.00055,0.0014,1,1,0.0132,0.0012,0.0013,1,0,0,0,100000]]

        ];

var paramSpin = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

var filenameBoundary = [
            [
                ["bifurcation3d",17],
                ["inletCenter","outletCenter0-X","outletCenter0-Y","outletCenter0-Z","outletCenter1-X","outletCenter1-Y","outletCenter-Z","inletRadius","outletRadius0","outletRadius1","inletNormal","outletNormal0-X","outletNormal0-Y","outletNormal0-Z","outletNormal1-X","outletNormal1-Y","outletNormal-Z"],
                [0.07863,-0.02359,-0.00005,0.02144,0.02336,0.000002,0.02119,0.00999839,0.007927,0.00787134,-1,0.505126, -0.04177, 0.862034,-0.483331, -0.0102764, 0.875377]
            ],
        ];



//bifurcation3d boundary conditions
// center of inflow and outflow regions [m]
//Vector<T,3> inletCenter( T(), T(), 0.0786395 );
//Vector<T,3> outletCenter0( -0.0235929682287551, -0.000052820468762797, -0.021445708949909 );
//Vector<T,3> outletCenter1( 0.0233643529416147, 0.00000212439067050152, -0.0211994104877918 );



//// radii of inflow and outflow regions [m]
//T inletRadius = 0.00999839;
//T outletRadius0 = 0.007927;
//T outletRadius1 = 0.00787134;

//// normals of inflow and outflow regions
//Vector<T,3> inletNormal( T(), T(), T( -1 ) );
//Vector<T,3> outletNormal0( 0.505126, -0.04177, 0.862034 );
//Vector<T,3> outletNormal1( -0.483331, -0.0102764, 0.875377 );

//microFluids2d.cpp
//N  = conv[0];
//nx   = conv[1];
//ny   = conv[2];
//inSize = conv[3];
//inlet1Velocity = conv[4];
//inlet2Velocity = conv[5];
//inlet3Velocity = conv[6];
//outletDensity = conv[7];
//alpha = conv[8];
//kappa1 = conv[9];
//kappa2 = conv[10];
//kappa3 = conv[11];
//gama = conv[12];
//h1 = conv[13];
//h2 = conv[14];
//h3 = conv[15];
//maxIter  = conv[16];

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
