
// Gmsh project created on Sat Feb 17 15:51:22 2024
SetFactory("OpenCASCADE");


// Define parameters (cm)
disk_radius = 4;  // Radius of the circle
ring_inner_radius = 3;  
disk_thick = 0.26;
A = 1.23;
B = 1.09;
C = 1.87;
// D = 0.26;
E = 0.494;
F = 0.2;

lcDisk = 0.005;

//---------------------------------------------
// cathode
//---------------------------------------------

cathode_upper_height = disk_thick;
cathode_lower_height = 0;

// Upper circle for cathode
cathode_out_ou = newp; Point(cathode_out_ou) = {0,0,cathode_upper_height ,lcDisk};
cathode_out_au = newp; Point(cathode_out_au) = {disk_radius,0,cathode_upper_height,lcDisk};
cathode_out_bu = newp; Point(cathode_out_bu) = {-disk_radius,0,cathode_upper_height ,lcDisk};
cathode_out_cu = newp; Point(cathode_out_cu) = {0,disk_radius,cathode_upper_height,lcDisk};
cathode_out_du = newp; Point(cathode_out_du) = {0,-disk_radius,cathode_upper_height ,lcDisk};

// lower circle for cathode
cathode_out_ol = newp; Point(cathode_out_ol) = {0,0,cathode_lower_height ,lcDisk};
cathode_out_al = newp; Point(cathode_out_al) = {disk_radius,0,cathode_lower_height ,lcDisk};
cathode_out_bl = newp; Point(cathode_out_bl) = {-disk_radius,0,cathode_lower_height ,lcDisk};
cathode_out_cl = newp; Point(cathode_out_cl) = {0,disk_radius,cathode_lower_height ,lcDisk};
cathode_out_dl = newp; Point(cathode_out_dl) = {0,-disk_radius,cathode_lower_height ,lcDisk};


cathode_out_audu1 = newc; Circle(cathode_out_audu1) = { cathode_out_au,cathode_out_ou,cathode_out_du };
cathode_out_dubu2 = newc; Circle(cathode_out_dubu2) = { cathode_out_du,cathode_out_ou,cathode_out_bu };
cathode_out_bucu3 = newc; Circle(cathode_out_bucu3) = { cathode_out_bu,cathode_out_ou,cathode_out_cu };
cathode_out_cuau4 = newc; Circle(cathode_out_cuau4) = { cathode_out_cu,cathode_out_ou,cathode_out_au };

cathode_out_aldl1 = newc; Circle(cathode_out_aldl1) = { cathode_out_al,cathode_out_ol,cathode_out_dl };
cathode_out_dlbl2 = newc; Circle(cathode_out_dlbl2) = { cathode_out_dl,cathode_out_ol,cathode_out_bl };
cathode_out_blcl3 = newc; Circle(cathode_out_blcl3) = { cathode_out_bl,cathode_out_ol,cathode_out_cl };
cathode_out_clal4 = newc; Circle(cathode_out_clal4) = { cathode_out_cl,cathode_out_ol,cathode_out_al };

cathode_out_alau1 = newc; Line(cathode_out_alau1) = { cathode_out_al,cathode_out_au };
cathode_out_blbu2 = newc; Line(cathode_out_blbu2) = { cathode_out_bl,cathode_out_bu };
cathode_out_clcu3 = newc; Line(cathode_out_clcu3) = { cathode_out_cl,cathode_out_cu };
cathode_out_dldu4 = newc; Line(cathode_out_dldu4) = { cathode_out_dl,cathode_out_du };


//---------------------------------------------
// anode
//---------------------------------------------

anode_upper_height = 2*disk_thick+C+E/2+4*B+3*F+E+A-E/2;
anode_lower_height = disk_thick+C+E/2+4*B+3*F+E+A-E/2;

// Upper circle for anode
anode_out_ou = newp; Point(anode_out_ou) = {0,0,anode_upper_height ,lcDisk};
anode_out_au = newp; Point(anode_out_au) = {disk_radius,0,anode_upper_height,lcDisk};
anode_out_bu = newp; Point(anode_out_bu) = {-disk_radius,0,anode_upper_height ,lcDisk};
anode_out_cu = newp; Point(anode_out_cu) = {0,disk_radius,anode_upper_height,lcDisk};
anode_out_du = newp; Point(anode_out_du) = {0,-disk_radius,anode_upper_height ,lcDisk};

// lower circle for anode
anode_out_ol = newp; Point(anode_out_ol) = {0,0,anode_lower_height ,lcDisk};
anode_out_al = newp; Point(anode_out_al) = {disk_radius,0,anode_lower_height ,lcDisk};
anode_out_bl = newp; Point(anode_out_bl) = {-disk_radius,0,anode_lower_height ,lcDisk};
anode_out_cl = newp; Point(anode_out_cl) = {0,disk_radius,anode_lower_height ,lcDisk};
anode_out_dl = newp; Point(anode_out_dl) = {0,-disk_radius,anode_lower_height ,lcDisk};


anode_out_audu1 = newc; Circle(anode_out_audu1) = { anode_out_au,anode_out_ou,anode_out_du };
anode_out_dubu2 = newc; Circle(anode_out_dubu2) = { anode_out_du,anode_out_ou,anode_out_bu };
anode_out_bucu3 = newc; Circle(anode_out_bucu3) = { anode_out_bu,anode_out_ou,anode_out_cu };
anode_out_cuau4 = newc; Circle(anode_out_cuau4) = { anode_out_cu,anode_out_ou,anode_out_au };

anode_out_aldl1 = newc; Circle(anode_out_aldl1) = { anode_out_al,anode_out_ol,anode_out_dl };
anode_out_dlbl2 = newc; Circle(anode_out_dlbl2) = { anode_out_dl,anode_out_ol,anode_out_bl };
anode_out_blcl3 = newc; Circle(anode_out_blcl3) = { anode_out_bl,anode_out_ol,anode_out_cl };
anode_out_clal4 = newc; Circle(anode_out_clal4) = { anode_out_cl,anode_out_ol,anode_out_al };

anode_out_alau1 = newc; Line(anode_out_alau1) = { anode_out_al,anode_out_au };
anode_out_blbu2 = newc; Line(anode_out_blbu2) = { anode_out_bl,anode_out_bu };
anode_out_clcu3 = newc; Line(anode_out_clcu3) = { anode_out_cl,anode_out_cu };
anode_out_dldu4 = newc; Line(anode_out_dldu4) = { anode_out_dl,anode_out_du };



//---------------------------------------------
// ring1
//---------------------------------------------

ring1_upper_height = disk_thick+C+E/2+3*B+3*F;
ring1_lower_height = disk_thick+C+E/2+3*B+2*F;

// Upper outer circle for ring1
ring1_out_ou = newp; Point(ring1_out_ou) = {0,0,ring1_upper_height ,lcDisk};
ring1_out_au = newp; Point(ring1_out_au) = {disk_radius,0,ring1_upper_height,lcDisk};
ring1_out_bu = newp; Point(ring1_out_bu) = {-disk_radius,0,ring1_upper_height ,lcDisk};
ring1_out_cu = newp; Point(ring1_out_cu) = {0,disk_radius,ring1_upper_height,lcDisk};
ring1_out_du = newp; Point(ring1_out_du) = {0,-disk_radius,ring1_upper_height ,lcDisk};

// lower outer circle for ring1
ring1_out_ol = newp; Point(ring1_out_ol) = {0,0,ring1_lower_height ,lcDisk};
ring1_out_al = newp; Point(ring1_out_al) = {disk_radius,0,ring1_lower_height ,lcDisk};
ring1_out_bl = newp; Point(ring1_out_bl) = {-disk_radius,0,ring1_lower_height ,lcDisk};
ring1_out_cl = newp; Point(ring1_out_cl) = {0,disk_radius,ring1_lower_height ,lcDisk};
ring1_out_dl = newp; Point(ring1_out_dl) = {0,-disk_radius,ring1_lower_height ,lcDisk};


// Upper inner circle for ring1
ring1_in_ou = newp; Point(ring1_in_ou) = {0,0,ring1_upper_height ,lcDisk};
ring1_in_au = newp; Point(ring1_in_au) = {ring_inner_radius,0,ring1_upper_height,lcDisk};
ring1_in_bu = newp; Point(ring1_in_bu) = {-ring_inner_radius,0,ring1_upper_height ,lcDisk};
ring1_in_cu = newp; Point(ring1_in_cu) = {0,ring_inner_radius,ring1_upper_height,lcDisk};
ring1_in_du = newp; Point(ring1_in_du) = {0,-ring_inner_radius,ring1_upper_height ,lcDisk};

// lower inner circle for ring1
ring1_in_ol = newp; Point(ring1_in_ol) = {0,0,ring1_lower_height ,lcDisk};
ring1_in_al = newp; Point(ring1_in_al) = {ring_inner_radius,0,ring1_lower_height ,lcDisk};
ring1_in_bl = newp; Point(ring1_in_bl) = {-ring_inner_radius,0,ring1_lower_height ,lcDisk};
ring1_in_cl = newp; Point(ring1_in_cl) = {0,ring_inner_radius,ring1_lower_height ,lcDisk};
ring1_in_dl = newp; Point(ring1_in_dl) = {0,-ring_inner_radius,ring1_lower_height ,lcDisk};


ring1_out_audu1 = newc; Circle(ring1_out_audu1) = { ring1_out_au,ring1_out_ou,ring1_out_du };
ring1_out_dubu2 = newc; Circle(ring1_out_dubu2) = { ring1_out_du,ring1_out_ou,ring1_out_bu };
ring1_out_bucu3 = newc; Circle(ring1_out_bucu3) = { ring1_out_bu,ring1_out_ou,ring1_out_cu };
ring1_out_cuau4 = newc; Circle(ring1_out_cuau4) = { ring1_out_cu,ring1_out_ou,ring1_out_au };

ring1_out_aldl1 = newc; Circle(ring1_out_aldl1) = { ring1_out_al,ring1_out_ol,ring1_out_dl };
ring1_out_dlbl2 = newc; Circle(ring1_out_dlbl2) = { ring1_out_dl,ring1_out_ol,ring1_out_bl };
ring1_out_blcl3 = newc; Circle(ring1_out_blcl3) = { ring1_out_bl,ring1_out_ol,ring1_out_cl };
ring1_out_clal4 = newc; Circle(ring1_out_clal4) = { ring1_out_cl,ring1_out_ol,ring1_out_al };


ring1_in_audu1 = newc; Circle(ring1_in_audu1) = { ring1_in_au,ring1_in_ou,ring1_in_du };
ring1_in_dubu2 = newc; Circle(ring1_in_dubu2) = { ring1_in_du,ring1_in_ou,ring1_in_bu };
ring1_in_bucu3 = newc; Circle(ring1_in_bucu3) = { ring1_in_bu,ring1_in_ou,ring1_in_cu };
ring1_in_cuau4 = newc; Circle(ring1_in_cuau4) = { ring1_in_cu,ring1_in_ou,ring1_in_au };

ring1_in_aldl1 = newc; Circle(ring1_in_aldl1) = { ring1_in_al,ring1_in_ol,ring1_in_dl };
ring1_in_dlbl2 = newc; Circle(ring1_in_dlbl2) = { ring1_in_dl,ring1_in_ol,ring1_in_bl };
ring1_in_blcl3 = newc; Circle(ring1_in_blcl3) = { ring1_in_bl,ring1_in_ol,ring1_in_cl };
ring1_in_clal4 = newc; Circle(ring1_in_clal4) = { ring1_in_cl,ring1_in_ol,ring1_in_al };

ring1_out_alau1 = newc; Line(ring1_out_alau1) = { ring1_out_al,ring1_out_au };
ring1_out_blbu2 = newc; Line(ring1_out_blbu2) = { ring1_out_bl,ring1_out_bu };
ring1_out_clcu3 = newc; Line(ring1_out_clcu3) = { ring1_out_cl,ring1_out_cu };
ring1_out_dldu4 = newc; Line(ring1_out_dldu4) = { ring1_out_dl,ring1_out_du };

ring1_in_alau1 = newc; Line(ring1_in_alau1) = { ring1_in_al,ring1_in_au };
ring1_in_blbu2 = newc; Line(ring1_in_blbu2) = { ring1_in_bl,ring1_in_bu };
ring1_in_clcu3 = newc; Line(ring1_in_clcu3) = { ring1_in_cl,ring1_in_cu };
ring1_in_dldu4 = newc; Line(ring1_in_dldu4) = { ring1_in_dl,ring1_in_du };


//---------------------------------------------
// ring2
//---------------------------------------------

ring2_upper_height = disk_thick+C+E/2+2*B+2*F;
ring2_lower_height = disk_thick+C+E/2+2*B+F;

// Upper outer circle for ring2
ring2_out_ou = newp; Point(ring2_out_ou) = {0,0,ring2_upper_height ,lcDisk};
ring2_out_au = newp; Point(ring2_out_au) = {disk_radius,0,ring2_upper_height,lcDisk};
ring2_out_bu = newp; Point(ring2_out_bu) = {-disk_radius,0,ring2_upper_height ,lcDisk};
ring2_out_cu = newp; Point(ring2_out_cu) = {0,disk_radius,ring2_upper_height,lcDisk};
ring2_out_du = newp; Point(ring2_out_du) = {0,-disk_radius,ring2_upper_height ,lcDisk};

// lower outer circle for ring2
ring2_out_ol = newp; Point(ring2_out_ol) = {0,0,ring2_lower_height ,lcDisk};
ring2_out_al = newp; Point(ring2_out_al) = {disk_radius,0,ring2_lower_height ,lcDisk};
ring2_out_bl = newp; Point(ring2_out_bl) = {-disk_radius,0,ring2_lower_height ,lcDisk};
ring2_out_cl = newp; Point(ring2_out_cl) = {0,disk_radius,ring2_lower_height ,lcDisk};
ring2_out_dl = newp; Point(ring2_out_dl) = {0,-disk_radius,ring2_lower_height ,lcDisk};


// Upper inner circle for ring2
ring2_in_ou = newp; Point(ring2_in_ou) = {0,0,ring2_upper_height ,lcDisk};
ring2_in_au = newp; Point(ring2_in_au) = {ring_inner_radius,0,ring2_upper_height,lcDisk};
ring2_in_bu = newp; Point(ring2_in_bu) = {-ring_inner_radius,0,ring2_upper_height ,lcDisk};
ring2_in_cu = newp; Point(ring2_in_cu) = {0,ring_inner_radius,ring2_upper_height,lcDisk};
ring2_in_du = newp; Point(ring2_in_du) = {0,-ring_inner_radius,ring2_upper_height ,lcDisk};

// lower inner circle for ring2
ring2_in_ol = newp; Point(ring2_in_ol) = {0,0,ring2_lower_height ,lcDisk};
ring2_in_al = newp; Point(ring2_in_al) = {ring_inner_radius,0,ring2_lower_height ,lcDisk};
ring2_in_bl = newp; Point(ring2_in_bl) = {-ring_inner_radius,0,ring2_lower_height ,lcDisk};
ring2_in_cl = newp; Point(ring2_in_cl) = {0,ring_inner_radius,ring2_lower_height ,lcDisk};
ring2_in_dl = newp; Point(ring2_in_dl) = {0,-ring_inner_radius,ring2_lower_height ,lcDisk};


ring2_out_audu1 = newc; Circle(ring2_out_audu1) = { ring2_out_au,ring2_out_ou,ring2_out_du };
ring2_out_dubu2 = newc; Circle(ring2_out_dubu2) = { ring2_out_du,ring2_out_ou,ring2_out_bu };
ring2_out_bucu3 = newc; Circle(ring2_out_bucu3) = { ring2_out_bu,ring2_out_ou,ring2_out_cu };
ring2_out_cuau4 = newc; Circle(ring2_out_cuau4) = { ring2_out_cu,ring2_out_ou,ring2_out_au };

ring2_out_aldl1 = newc; Circle(ring2_out_aldl1) = { ring2_out_al,ring2_out_ol,ring2_out_dl };
ring2_out_dlbl2 = newc; Circle(ring2_out_dlbl2) = { ring2_out_dl,ring2_out_ol,ring2_out_bl };
ring2_out_blcl3 = newc; Circle(ring2_out_blcl3) = { ring2_out_bl,ring2_out_ol,ring2_out_cl };
ring2_out_clal4 = newc; Circle(ring2_out_clal4) = { ring2_out_cl,ring2_out_ol,ring2_out_al };


ring2_in_audu1 = newc; Circle(ring2_in_audu1) = { ring2_in_au,ring2_in_ou,ring2_in_du };
ring2_in_dubu2 = newc; Circle(ring2_in_dubu2) = { ring2_in_du,ring2_in_ou,ring2_in_bu };
ring2_in_bucu3 = newc; Circle(ring2_in_bucu3) = { ring2_in_bu,ring2_in_ou,ring2_in_cu };
ring2_in_cuau4 = newc; Circle(ring2_in_cuau4) = { ring2_in_cu,ring2_in_ou,ring2_in_au };

ring2_in_aldl1 = newc; Circle(ring2_in_aldl1) = { ring2_in_al,ring2_in_ol,ring2_in_dl };
ring2_in_dlbl2 = newc; Circle(ring2_in_dlbl2) = { ring2_in_dl,ring2_in_ol,ring2_in_bl };
ring2_in_blcl3 = newc; Circle(ring2_in_blcl3) = { ring2_in_bl,ring2_in_ol,ring2_in_cl };
ring2_in_clal4 = newc; Circle(ring2_in_clal4) = { ring2_in_cl,ring2_in_ol,ring2_in_al };

ring2_out_alau1 = newc; Line(ring2_out_alau1) = { ring2_out_al,ring2_out_au };
ring2_out_blbu2 = newc; Line(ring2_out_blbu2) = { ring2_out_bl,ring2_out_bu };
ring2_out_clcu3 = newc; Line(ring2_out_clcu3) = { ring2_out_cl,ring2_out_cu };
ring2_out_dldu4 = newc; Line(ring2_out_dldu4) = { ring2_out_dl,ring2_out_du };

ring2_in_alau1 = newc; Line(ring2_in_alau1) = { ring2_in_al,ring2_in_au };
ring2_in_blbu2 = newc; Line(ring2_in_blbu2) = { ring2_in_bl,ring2_in_bu };
ring2_in_clcu3 = newc; Line(ring2_in_clcu3) = { ring2_in_cl,ring2_in_cu };
ring2_in_dldu4 = newc; Line(ring2_in_dldu4) = { ring2_in_dl,ring2_in_du };


//---------------------------------------------
// ring3
//---------------------------------------------

ring3_upper_height = disk_thick+C+E/2+B+F;
ring3_lower_height = disk_thick+C+E/2+B;

// Upper outer circle for ring3
ring3_out_ou = newp; Point(ring3_out_ou) = {0,0,ring3_upper_height ,lcDisk};
ring3_out_au = newp; Point(ring3_out_au) = {disk_radius,0,ring3_upper_height,lcDisk};
ring3_out_bu = newp; Point(ring3_out_bu) = {-disk_radius,0,ring3_upper_height ,lcDisk};
ring3_out_cu = newp; Point(ring3_out_cu) = {0,disk_radius,ring3_upper_height,lcDisk};
ring3_out_du = newp; Point(ring3_out_du) = {0,-disk_radius,ring3_upper_height ,lcDisk};

// lower outer circle for ring3
ring3_out_ol = newp; Point(ring3_out_ol) = {0,0,ring3_lower_height ,lcDisk};
ring3_out_al = newp; Point(ring3_out_al) = {disk_radius,0,ring3_lower_height ,lcDisk};
ring3_out_bl = newp; Point(ring3_out_bl) = {-disk_radius,0,ring3_lower_height ,lcDisk};
ring3_out_cl = newp; Point(ring3_out_cl) = {0,disk_radius,ring3_lower_height ,lcDisk};
ring3_out_dl = newp; Point(ring3_out_dl) = {0,-disk_radius,ring3_lower_height ,lcDisk};


// Upper inner circle for ring3
ring3_in_ou = newp; Point(ring3_in_ou) = {0,0,ring3_upper_height ,lcDisk};
ring3_in_au = newp; Point(ring3_in_au) = {ring_inner_radius,0,ring3_upper_height,lcDisk};
ring3_in_bu = newp; Point(ring3_in_bu) = {-ring_inner_radius,0,ring3_upper_height ,lcDisk};
ring3_in_cu = newp; Point(ring3_in_cu) = {0,ring_inner_radius,ring3_upper_height,lcDisk};
ring3_in_du = newp; Point(ring3_in_du) = {0,-ring_inner_radius,ring3_upper_height ,lcDisk};

// lower inner circle for ring3
ring3_in_ol = newp; Point(ring3_in_ol) = {0,0,ring3_lower_height ,lcDisk};
ring3_in_al = newp; Point(ring3_in_al) = {ring_inner_radius,0,ring3_lower_height ,lcDisk};
ring3_in_bl = newp; Point(ring3_in_bl) = {-ring_inner_radius,0,ring3_lower_height ,lcDisk};
ring3_in_cl = newp; Point(ring3_in_cl) = {0,ring_inner_radius,ring3_lower_height ,lcDisk};
ring3_in_dl = newp; Point(ring3_in_dl) = {0,-ring_inner_radius,ring3_lower_height ,lcDisk};


ring3_out_audu1 = newc; Circle(ring3_out_audu1) = { ring3_out_au,ring3_out_ou,ring3_out_du };
ring3_out_dubu2 = newc; Circle(ring3_out_dubu2) = { ring3_out_du,ring3_out_ou,ring3_out_bu };
ring3_out_bucu3 = newc; Circle(ring3_out_bucu3) = { ring3_out_bu,ring3_out_ou,ring3_out_cu };
ring3_out_cuau4 = newc; Circle(ring3_out_cuau4) = { ring3_out_cu,ring3_out_ou,ring3_out_au };

ring3_out_aldl1 = newc; Circle(ring3_out_aldl1) = { ring3_out_al,ring3_out_ol,ring3_out_dl };
ring3_out_dlbl2 = newc; Circle(ring3_out_dlbl2) = { ring3_out_dl,ring3_out_ol,ring3_out_bl };
ring3_out_blcl3 = newc; Circle(ring3_out_blcl3) = { ring3_out_bl,ring3_out_ol,ring3_out_cl };
ring3_out_clal4 = newc; Circle(ring3_out_clal4) = { ring3_out_cl,ring3_out_ol,ring3_out_al };


ring3_in_audu1 = newc; Circle(ring3_in_audu1) = { ring3_in_au,ring3_in_ou,ring3_in_du };
ring3_in_dubu2 = newc; Circle(ring3_in_dubu2) = { ring3_in_du,ring3_in_ou,ring3_in_bu };
ring3_in_bucu3 = newc; Circle(ring3_in_bucu3) = { ring3_in_bu,ring3_in_ou,ring3_in_cu };
ring3_in_cuau4 = newc; Circle(ring3_in_cuau4) = { ring3_in_cu,ring3_in_ou,ring3_in_au };

ring3_in_aldl1 = newc; Circle(ring3_in_aldl1) = { ring3_in_al,ring3_in_ol,ring3_in_dl };
ring3_in_dlbl2 = newc; Circle(ring3_in_dlbl2) = { ring3_in_dl,ring3_in_ol,ring3_in_bl };
ring3_in_blcl3 = newc; Circle(ring3_in_blcl3) = { ring3_in_bl,ring3_in_ol,ring3_in_cl };
ring3_in_clal4 = newc; Circle(ring3_in_clal4) = { ring3_in_cl,ring3_in_ol,ring3_in_al };

ring3_out_alau1 = newc; Line(ring3_out_alau1) = { ring3_out_al,ring3_out_au };
ring3_out_blbu2 = newc; Line(ring3_out_blbu2) = { ring3_out_bl,ring3_out_bu };
ring3_out_clcu3 = newc; Line(ring3_out_clcu3) = { ring3_out_cl,ring3_out_cu };
ring3_out_dldu4 = newc; Line(ring3_out_dldu4) = { ring3_out_dl,ring3_out_du };

ring3_in_alau1 = newc; Line(ring3_in_alau1) = { ring3_in_al,ring3_in_au };
ring3_in_blbu2 = newc; Line(ring3_in_blbu2) = { ring3_in_bl,ring3_in_bu };
ring3_in_clcu3 = newc; Line(ring3_in_clcu3) = { ring3_in_cl,ring3_in_cu };
ring3_in_dldu4 = newc; Line(ring3_in_dldu4) = { ring3_in_dl,ring3_in_du };


//---------------------------------------------
// cathodegrid
//---------------------------------------------

cathodegrid_upper_height = disk_thick+C+E/2;
cathodegrid_lower_height = disk_thick+C-E/2;

// Upper outer circle for cathodegrid
cathodegrid_out_ou = newp; Point(cathodegrid_out_ou) = {0,0,cathodegrid_upper_height ,lcDisk};
cathodegrid_out_au = newp; Point(cathodegrid_out_au) = {disk_radius,0,cathodegrid_upper_height,lcDisk};
cathodegrid_out_bu = newp; Point(cathodegrid_out_bu) = {-disk_radius,0,cathodegrid_upper_height ,lcDisk};
cathodegrid_out_cu = newp; Point(cathodegrid_out_cu) = {0,disk_radius,cathodegrid_upper_height,lcDisk};
cathodegrid_out_du = newp; Point(cathodegrid_out_du) = {0,-disk_radius,cathodegrid_upper_height ,lcDisk};

// lower outer circle for cathodegrid
cathodegrid_out_ol = newp; Point(cathodegrid_out_ol) = {0,0,cathodegrid_lower_height ,lcDisk};
cathodegrid_out_al = newp; Point(cathodegrid_out_al) = {disk_radius,0,cathodegrid_lower_height ,lcDisk};
cathodegrid_out_bl = newp; Point(cathodegrid_out_bl) = {-disk_radius,0,cathodegrid_lower_height ,lcDisk};
cathodegrid_out_cl = newp; Point(cathodegrid_out_cl) = {0,disk_radius,cathodegrid_lower_height ,lcDisk};
cathodegrid_out_dl = newp; Point(cathodegrid_out_dl) = {0,-disk_radius,cathodegrid_lower_height ,lcDisk};


// Upper inner circle for cathodegrid
cathodegrid_in_ou = newp; Point(cathodegrid_in_ou) = {0,0,cathodegrid_upper_height ,lcDisk};
cathodegrid_in_au = newp; Point(cathodegrid_in_au) = {ring_inner_radius,0,cathodegrid_upper_height,lcDisk};
cathodegrid_in_bu = newp; Point(cathodegrid_in_bu) = {-ring_inner_radius,0,cathodegrid_upper_height ,lcDisk};
cathodegrid_in_cu = newp; Point(cathodegrid_in_cu) = {0,ring_inner_radius,cathodegrid_upper_height,lcDisk};
cathodegrid_in_du = newp; Point(cathodegrid_in_du) = {0,-ring_inner_radius,cathodegrid_upper_height ,lcDisk};

// lower inner circle for cathodegrid
cathodegrid_in_ol = newp; Point(cathodegrid_in_ol) = {0,0,cathodegrid_lower_height ,lcDisk};
cathodegrid_in_al = newp; Point(cathodegrid_in_al) = {ring_inner_radius,0,cathodegrid_lower_height ,lcDisk};
cathodegrid_in_bl = newp; Point(cathodegrid_in_bl) = {-ring_inner_radius,0,cathodegrid_lower_height ,lcDisk};
cathodegrid_in_cl = newp; Point(cathodegrid_in_cl) = {0,ring_inner_radius,cathodegrid_lower_height ,lcDisk};
cathodegrid_in_dl = newp; Point(cathodegrid_in_dl) = {0,-ring_inner_radius,cathodegrid_lower_height ,lcDisk};


cathodegrid_out_audu1 = newc; Circle(cathodegrid_out_audu1) = { cathodegrid_out_au,cathodegrid_out_ou,cathodegrid_out_du };
cathodegrid_out_dubu2 = newc; Circle(cathodegrid_out_dubu2) = { cathodegrid_out_du,cathodegrid_out_ou,cathodegrid_out_bu };
cathodegrid_out_bucu3 = newc; Circle(cathodegrid_out_bucu3) = { cathodegrid_out_bu,cathodegrid_out_ou,cathodegrid_out_cu };
cathodegrid_out_cuau4 = newc; Circle(cathodegrid_out_cuau4) = { cathodegrid_out_cu,cathodegrid_out_ou,cathodegrid_out_au };

cathodegrid_out_aldl1 = newc; Circle(cathodegrid_out_aldl1) = { cathodegrid_out_al,cathodegrid_out_ol,cathodegrid_out_dl };
cathodegrid_out_dlbl2 = newc; Circle(cathodegrid_out_dlbl2) = { cathodegrid_out_dl,cathodegrid_out_ol,cathodegrid_out_bl };
cathodegrid_out_blcl3 = newc; Circle(cathodegrid_out_blcl3) = { cathodegrid_out_bl,cathodegrid_out_ol,cathodegrid_out_cl };
cathodegrid_out_clal4 = newc; Circle(cathodegrid_out_clal4) = { cathodegrid_out_cl,cathodegrid_out_ol,cathodegrid_out_al };


cathodegrid_in_audu1 = newc; Circle(cathodegrid_in_audu1) = { cathodegrid_in_au,cathodegrid_in_ou,cathodegrid_in_du };
cathodegrid_in_dubu2 = newc; Circle(cathodegrid_in_dubu2) = { cathodegrid_in_du,cathodegrid_in_ou,cathodegrid_in_bu };
cathodegrid_in_bucu3 = newc; Circle(cathodegrid_in_bucu3) = { cathodegrid_in_bu,cathodegrid_in_ou,cathodegrid_in_cu };
cathodegrid_in_cuau4 = newc; Circle(cathodegrid_in_cuau4) = { cathodegrid_in_cu,cathodegrid_in_ou,cathodegrid_in_au };

cathodegrid_in_aldl1 = newc; Circle(cathodegrid_in_aldl1) = { cathodegrid_in_al,cathodegrid_in_ol,cathodegrid_in_dl };
cathodegrid_in_dlbl2 = newc; Circle(cathodegrid_in_dlbl2) = { cathodegrid_in_dl,cathodegrid_in_ol,cathodegrid_in_bl };
cathodegrid_in_blcl3 = newc; Circle(cathodegrid_in_blcl3) = { cathodegrid_in_bl,cathodegrid_in_ol,cathodegrid_in_cl };
cathodegrid_in_clal4 = newc; Circle(cathodegrid_in_clal4) = { cathodegrid_in_cl,cathodegrid_in_ol,cathodegrid_in_al };

cathodegrid_out_alau1 = newc; Line(cathodegrid_out_alau1) = { cathodegrid_out_al,cathodegrid_out_au };
cathodegrid_out_blbu2 = newc; Line(cathodegrid_out_blbu2) = { cathodegrid_out_bl,cathodegrid_out_bu };
cathodegrid_out_clcu3 = newc; Line(cathodegrid_out_clcu3) = { cathodegrid_out_cl,cathodegrid_out_cu };
cathodegrid_out_dldu4 = newc; Line(cathodegrid_out_dldu4) = { cathodegrid_out_dl,cathodegrid_out_du };

cathodegrid_in_alau1 = newc; Line(cathodegrid_in_alau1) = { cathodegrid_in_al,cathodegrid_in_au };
cathodegrid_in_blbu2 = newc; Line(cathodegrid_in_blbu2) = { cathodegrid_in_bl,cathodegrid_in_bu };
cathodegrid_in_clcu3 = newc; Line(cathodegrid_in_clcu3) = { cathodegrid_in_cl,cathodegrid_in_cu };
cathodegrid_in_dldu4 = newc; Line(cathodegrid_in_dldu4) = { cathodegrid_in_dl,cathodegrid_in_du };



//---------------------------------------------
// anodegrid
//---------------------------------------------

anodegrid_upper_height = disk_thick+C+E/2+4*B+3*F+E;
anodegrid_lower_height = disk_thick+C+E/2+4*B+3*F;

// Upper outer circle for anodegrid
anodegrid_out_ou = newp; Point(anodegrid_out_ou) = {0,0,anodegrid_upper_height ,lcDisk};
anodegrid_out_au = newp; Point(anodegrid_out_au) = {disk_radius,0,anodegrid_upper_height,lcDisk};
anodegrid_out_bu = newp; Point(anodegrid_out_bu) = {-disk_radius,0,anodegrid_upper_height ,lcDisk};
anodegrid_out_cu = newp; Point(anodegrid_out_cu) = {0,disk_radius,anodegrid_upper_height,lcDisk};
anodegrid_out_du = newp; Point(anodegrid_out_du) = {0,-disk_radius,anodegrid_upper_height ,lcDisk};

// lower outer circle for anodegrid
anodegrid_out_ol = newp; Point(anodegrid_out_ol) = {0,0,anodegrid_lower_height ,lcDisk};
anodegrid_out_al = newp; Point(anodegrid_out_al) = {disk_radius,0,anodegrid_lower_height ,lcDisk};
anodegrid_out_bl = newp; Point(anodegrid_out_bl) = {-disk_radius,0,anodegrid_lower_height ,lcDisk};
anodegrid_out_cl = newp; Point(anodegrid_out_cl) = {0,disk_radius,anodegrid_lower_height ,lcDisk};
anodegrid_out_dl = newp; Point(anodegrid_out_dl) = {0,-disk_radius,anodegrid_lower_height ,lcDisk};


// Upper inner circle for anodegrid
anodegrid_in_ou = newp; Point(anodegrid_in_ou) = {0,0,anodegrid_upper_height ,lcDisk};
anodegrid_in_au = newp; Point(anodegrid_in_au) = {ring_inner_radius,0,anodegrid_upper_height,lcDisk};
anodegrid_in_bu = newp; Point(anodegrid_in_bu) = {-ring_inner_radius,0,anodegrid_upper_height ,lcDisk};
anodegrid_in_cu = newp; Point(anodegrid_in_cu) = {0,ring_inner_radius,anodegrid_upper_height,lcDisk};
anodegrid_in_du = newp; Point(anodegrid_in_du) = {0,-ring_inner_radius,anodegrid_upper_height ,lcDisk};

// lower inner circle for anodegrid
anodegrid_in_ol = newp; Point(anodegrid_in_ol) = {0,0,anodegrid_lower_height ,lcDisk};
anodegrid_in_al = newp; Point(anodegrid_in_al) = {ring_inner_radius,0,anodegrid_lower_height ,lcDisk};
anodegrid_in_bl = newp; Point(anodegrid_in_bl) = {-ring_inner_radius,0,anodegrid_lower_height ,lcDisk};
anodegrid_in_cl = newp; Point(anodegrid_in_cl) = {0,ring_inner_radius,anodegrid_lower_height ,lcDisk};
anodegrid_in_dl = newp; Point(anodegrid_in_dl) = {0,-ring_inner_radius,anodegrid_lower_height ,lcDisk};


anodegrid_out_audu1 = newc; Circle(anodegrid_out_audu1) = { anodegrid_out_au,anodegrid_out_ou,anodegrid_out_du };
anodegrid_out_dubu2 = newc; Circle(anodegrid_out_dubu2) = { anodegrid_out_du,anodegrid_out_ou,anodegrid_out_bu };
anodegrid_out_bucu3 = newc; Circle(anodegrid_out_bucu3) = { anodegrid_out_bu,anodegrid_out_ou,anodegrid_out_cu };
anodegrid_out_cuau4 = newc; Circle(anodegrid_out_cuau4) = { anodegrid_out_cu,anodegrid_out_ou,anodegrid_out_au };

anodegrid_out_aldl1 = newc; Circle(anodegrid_out_aldl1) = { anodegrid_out_al,anodegrid_out_ol,anodegrid_out_dl };
anodegrid_out_dlbl2 = newc; Circle(anodegrid_out_dlbl2) = { anodegrid_out_dl,anodegrid_out_ol,anodegrid_out_bl };
anodegrid_out_blcl3 = newc; Circle(anodegrid_out_blcl3) = { anodegrid_out_bl,anodegrid_out_ol,anodegrid_out_cl };
anodegrid_out_clal4 = newc; Circle(anodegrid_out_clal4) = { anodegrid_out_cl,anodegrid_out_ol,anodegrid_out_al };


anodegrid_in_audu1 = newc; Circle(anodegrid_in_audu1) = { anodegrid_in_au,anodegrid_in_ou,anodegrid_in_du };
anodegrid_in_dubu2 = newc; Circle(anodegrid_in_dubu2) = { anodegrid_in_du,anodegrid_in_ou,anodegrid_in_bu };
anodegrid_in_bucu3 = newc; Circle(anodegrid_in_bucu3) = { anodegrid_in_bu,anodegrid_in_ou,anodegrid_in_cu };
anodegrid_in_cuau4 = newc; Circle(anodegrid_in_cuau4) = { anodegrid_in_cu,anodegrid_in_ou,anodegrid_in_au };

anodegrid_in_aldl1 = newc; Circle(anodegrid_in_aldl1) = { anodegrid_in_al,anodegrid_in_ol,anodegrid_in_dl };
anodegrid_in_dlbl2 = newc; Circle(anodegrid_in_dlbl2) = { anodegrid_in_dl,anodegrid_in_ol,anodegrid_in_bl };
anodegrid_in_blcl3 = newc; Circle(anodegrid_in_blcl3) = { anodegrid_in_bl,anodegrid_in_ol,anodegrid_in_cl };
anodegrid_in_clal4 = newc; Circle(anodegrid_in_clal4) = { anodegrid_in_cl,anodegrid_in_ol,anodegrid_in_al };

anodegrid_out_alau1 = newc; Line(anodegrid_out_alau1) = { anodegrid_out_al,anodegrid_out_au };
anodegrid_out_blbu2 = newc; Line(anodegrid_out_blbu2) = { anodegrid_out_bl,anodegrid_out_bu };
anodegrid_out_clcu3 = newc; Line(anodegrid_out_clcu3) = { anodegrid_out_cl,anodegrid_out_cu };
anodegrid_out_dldu4 = newc; Line(anodegrid_out_dldu4) = { anodegrid_out_dl,anodegrid_out_du };

anodegrid_in_alau1 = newc; Line(anodegrid_in_alau1) = { anodegrid_in_al,anodegrid_in_au };
anodegrid_in_blbu2 = newc; Line(anodegrid_in_blbu2) = { anodegrid_in_bl,anodegrid_in_bu };
anodegrid_in_clcu3 = newc; Line(anodegrid_in_clcu3) = { anodegrid_in_cl,anodegrid_in_cu };
anodegrid_in_dldu4 = newc; Line(anodegrid_in_dldu4) = { anodegrid_in_dl,anodegrid_in_du };



// lines between rings
anode_anodegrid_1_1 = newc; Line(anode_anodegrid_1_1) = { anode_out_al,anodegrid_out_au };
anode_anodegrid_1_2 = newc; Line(anode_anodegrid_1_2) = { anode_out_bl,anodegrid_out_bu };
anode_anodegrid_1_3 = newc; Line(anode_anodegrid_1_3) = { anode_out_cl,anodegrid_out_cu };
anode_anodegrid_1_4 = newc; Line(anode_anodegrid_1_4) = { anode_out_dl,anodegrid_out_du };


anodegrid_ring1_1_1 = newc; Line(anodegrid_ring1_1_1) = { anodegrid_out_al,ring1_out_au };
anodegrid_ring1_1_2 = newc; Line(anodegrid_ring1_1_2) = { anodegrid_out_bl,ring1_out_bu };
anodegrid_ring1_1_3 = newc; Line(anodegrid_ring1_1_3) = { anodegrid_out_cl,ring1_out_cu };
anodegrid_ring1_1_4 = newc; Line(anodegrid_ring1_1_4) = { anodegrid_out_dl,ring1_out_du };


ring1_ring2_1_1 = newc; Line(ring1_ring2_1_1) = { ring1_out_al,ring2_out_au };
ring1_ring2_1_2 = newc; Line(ring1_ring2_1_2) = { ring1_out_bl,ring2_out_bu };
ring1_ring2_1_3 = newc; Line(ring1_ring2_1_3) = { ring1_out_cl,ring2_out_cu };
ring1_ring2_1_4 = newc; Line(ring1_ring2_1_4) = { ring1_out_dl,ring2_out_du };


ring2_ring3_1_1 = newc; Line(ring2_ring3_1_1) = { ring2_out_al,ring3_out_au };
ring2_ring3_1_2 = newc; Line(ring2_ring3_1_2) = { ring2_out_bl,ring3_out_bu };
ring2_ring3_1_3 = newc; Line(ring2_ring3_1_3) = { ring2_out_cl,ring3_out_cu };
ring2_ring3_1_4 = newc; Line(ring2_ring3_1_4) = { ring2_out_dl,ring3_out_du };


ring3_cathodegrid_1_1 = newc; Line(ring3_cathodegrid_1_1) = { ring3_out_al,cathodegrid_out_au };
ring3_cathodegrid_1_2 = newc; Line(ring3_cathodegrid_1_2) = { ring3_out_bl,cathodegrid_out_bu };
ring3_cathodegrid_1_3 = newc; Line(ring3_cathodegrid_1_3) = { ring3_out_cl,cathodegrid_out_cu };
ring3_cathodegrid_1_4 = newc; Line(ring3_cathodegrid_1_4) = { ring3_out_dl,cathodegrid_out_du };


cathodegrid_cathode_1_1 = newc; Line(cathodegrid_cathode_1_1) = { cathodegrid_out_al,cathode_out_au };
cathodegrid_cathode_1_2 = newc; Line(cathodegrid_cathode_1_2) = { cathodegrid_out_bl,cathode_out_bu };
cathodegrid_cathode_1_3 = newc; Line(cathodegrid_cathode_1_3) = { cathodegrid_out_cl,cathode_out_cu };
cathodegrid_cathode_1_4 = newc; Line(cathodegrid_cathode_1_4) = { cathodegrid_out_dl,cathode_out_du };


// lines for rings surfaces

// cgrid
surfline_cgrid_au = newc; Line(surfline_cgrid_au) = {cathodegrid_in_au,cathodegrid_out_au};
surfline_cgrid_bu = newc; Line(surfline_cgrid_bu) = {cathodegrid_in_bu,cathodegrid_out_bu};
surfline_cgrid_cu = newc; Line(surfline_cgrid_cu) = {cathodegrid_in_cu,cathodegrid_out_cu};
surfline_cgrid_du = newc; Line(surfline_cgrid_du) = {cathodegrid_in_du,cathodegrid_out_du};

surfline_cgrid_al = newc; Line(surfline_cgrid_al) = {cathodegrid_in_al,cathodegrid_out_al};
surfline_cgrid_bl = newc; Line(surfline_cgrid_bl) = {cathodegrid_in_bl,cathodegrid_out_bl};
surfline_cgrid_cl = newc; Line(surfline_cgrid_cl) = {cathodegrid_in_cl,cathodegrid_out_cl};
surfline_cgrid_dl = newc; Line(surfline_cgrid_dl) = {cathodegrid_in_dl,cathodegrid_out_dl};

// agrid
surfline_agrid_au = newc; Line(surfline_agrid_au) = {anodegrid_in_au,anodegrid_out_au};
surfline_agrid_bu = newc; Line(surfline_agrid_bu) = {anodegrid_in_bu,anodegrid_out_bu};
surfline_agrid_cu = newc; Line(surfline_agrid_cu) = {anodegrid_in_cu,anodegrid_out_cu};
surfline_agrid_du = newc; Line(surfline_agrid_du) = {anodegrid_in_du,anodegrid_out_du};

surfline_agrid_al = newc; Line(surfline_agrid_al) = {anodegrid_in_al,anodegrid_out_al};
surfline_agrid_bl = newc; Line(surfline_agrid_bl) = {anodegrid_in_bl,anodegrid_out_bl};
surfline_agrid_cl = newc; Line(surfline_agrid_cl) = {anodegrid_in_cl,anodegrid_out_cl};
surfline_agrid_dl = newc; Line(surfline_agrid_dl) = {anodegrid_in_dl,anodegrid_out_dl};

// ring 1
surfline_ring1_au = newc; Line(surfline_ring1_au) = {ring1_in_au,ring1_out_au};
surfline_ring1_bu = newc; Line(surfline_ring1_bu) = {ring1_in_bu,ring1_out_bu};
surfline_ring1_cu = newc; Line(surfline_ring1_cu) = {ring1_in_cu,ring1_out_cu};
surfline_ring1_du = newc; Line(surfline_ring1_du) = {ring1_in_du,ring1_out_du};

surfline_ring1_al = newc; Line(surfline_ring1_al) = {ring1_in_al,ring1_out_al};
surfline_ring1_bl = newc; Line(surfline_ring1_bl) = {ring1_in_bl,ring1_out_bl};
surfline_ring1_cl = newc; Line(surfline_ring1_cl) = {ring1_in_cl,ring1_out_cl};
surfline_ring1_dl = newc; Line(surfline_ring1_dl) = {ring1_in_dl,ring1_out_dl};

// ring 2
surfline_ring2_au = newc; Line(surfline_ring2_au) = {ring2_in_au,ring2_out_au};
surfline_ring2_bu = newc; Line(surfline_ring2_bu) = {ring2_in_bu,ring2_out_bu};
surfline_ring2_cu = newc; Line(surfline_ring2_cu) = {ring2_in_cu,ring2_out_cu};
surfline_ring2_du = newc; Line(surfline_ring2_du) = {ring2_in_du,ring2_out_du};

surfline_ring2_al = newc; Line(surfline_ring2_al) = {ring2_in_al,ring2_out_al};
surfline_ring2_bl = newc; Line(surfline_ring2_bl) = {ring2_in_bl,ring2_out_bl};
surfline_ring2_cl = newc; Line(surfline_ring2_cl) = {ring2_in_cl,ring2_out_cl};
surfline_ring2_dl = newc; Line(surfline_ring2_dl) = {ring2_in_dl,ring2_out_dl};

// ring 3
surfline_ring3_au = newc; Line(surfline_ring3_au) = {ring3_in_au,ring3_out_au};
surfline_ring3_bu = newc; Line(surfline_ring3_bu) = {ring3_in_bu,ring3_out_bu};
surfline_ring3_cu = newc; Line(surfline_ring3_cu) = {ring3_in_cu,ring3_out_cu};
surfline_ring3_du = newc; Line(surfline_ring3_du) = {ring3_in_du,ring3_out_du};

surfline_ring3_al = newc; Line(surfline_ring3_al) = {ring3_in_al,ring3_out_al};
surfline_ring3_bl = newc; Line(surfline_ring3_bl) = {ring3_in_bl,ring3_out_bl};
surfline_ring3_cl = newc; Line(surfline_ring3_cl) = {ring3_in_cl,ring3_out_cl};
surfline_ring3_dl = newc; Line(surfline_ring3_dl) = {ring3_in_dl,ring3_out_dl};


//---------------------------------------------
// SURFACE
//---------------------------------------------

// Surface for anode_out 
llanode_out_abcdu = newreg; Line Loop(llanode_out_abcdu) = {anode_out_audu1, anode_out_dubu2 , anode_out_bucu3, anode_out_cuau4};
rsanode_out_abcdu = newreg; Surface(rsanode_out_abcdu) = {llanode_out_abcdu};

llanode_out_abcdl = newreg; Line Loop(llanode_out_abcdl) = {anode_out_aldl1, anode_out_dlbl2 , anode_out_blcl3, anode_out_clal4};
rsanode_out_abcdl = newreg; Surface(rsanode_out_abcdl) = {llanode_out_abcdl};


llanode_out_audu = newreg; Line Loop(llanode_out_audu) = {anode_out_audu1, anode_out_dldu4 , anode_out_aldl1, anode_out_alau1};
rsanode_out_audu = newreg; Surface(rsanode_out_audu) = {llanode_out_audu};

llanode_out_dubu = newreg; Line Loop(llanode_out_dubu) = {anode_out_dubu2, anode_out_blbu2 , anode_out_dlbl2, anode_out_dldu4};
rsanode_out_dubu = newreg; Surface(rsanode_out_dubu) = {llanode_out_dubu};

llanode_out_bucu = newreg; Line Loop(llanode_out_bucu) = {anode_out_bucu3, anode_out_clcu3 , anode_out_blcl3, anode_out_blbu2};
rsanode_out_bucu = newreg; Surface(rsanode_out_bucu) = {llanode_out_bucu};

llanode_out_cuau = newreg; Line Loop(llanode_out_cuau) = {anode_out_cuau4, anode_out_alau1 , anode_out_clal4, anode_out_clcu3};
rsanode_out_cuau = newreg; Surface(rsanode_out_cuau) = {llanode_out_cuau};


// Surface for cathode_out 
llcathode_out_abcdu = newreg; Line Loop(llcathode_out_abcdu) = {cathode_out_audu1, cathode_out_dubu2 , cathode_out_bucu3, cathode_out_cuau4};
rscathode_out_abcdu = newreg; Surface(rscathode_out_abcdu) = {llcathode_out_abcdu};

llcathode_out_abcdl = newreg; Line Loop(llcathode_out_abcdl) = {cathode_out_aldl1, cathode_out_dlbl2 , cathode_out_blcl3, cathode_out_clal4};
rscathode_out_abcdl = newreg; Surface(rscathode_out_abcdl) = {llcathode_out_abcdl};

llcathode_out_audu = newreg; Line Loop(llcathode_out_audu) = {cathode_out_audu1, cathode_out_dldu4 , cathode_out_aldl1, cathode_out_alau1};
rscathode_out_audu = newreg; Surface(rscathode_out_audu) = {llcathode_out_audu};

llcathode_out_dubu = newreg; Line Loop(llcathode_out_dubu) = {cathode_out_dubu2, cathode_out_blbu2 , cathode_out_dlbl2, cathode_out_dldu4};
rscathode_out_dubu = newreg; Surface(rscathode_out_dubu) = {llcathode_out_dubu};

llcathode_out_bucu = newreg; Line Loop(llcathode_out_bucu) = {cathode_out_bucu3, cathode_out_clcu3 , cathode_out_blcl3, cathode_out_blbu2};
rscathode_out_bucu = newreg; Surface(rscathode_out_bucu) = {llcathode_out_bucu};

llcathode_out_cuau = newreg; Line Loop(llcathode_out_cuau) = {cathode_out_cuau4, cathode_out_alau1 , cathode_out_clal4, cathode_out_clcu3};
rscathode_out_cuau = newreg; Surface(rscathode_out_cuau) = {llcathode_out_cuau};


// Volumes
sl_anode= newreg; Surface Loop(sl_anode) = {rsanode_out_abcdu,rsanode_out_audu, rsanode_out_dubu, rsanode_out_bucu, rsanode_out_cuau, rsanode_out_abcdl};
vol_anode = newreg; Volume(vol_anode) = {sl_anode};



// Physical surfaces
// Surfaces to which voltages will be applied

physsurf_anode = newreg; Physical Surface(physsurf_anode) = {rsanode_out_abcdu,rsanode_out_audu, rsanode_out_dubu, rsanode_out_bucu, rsanode_out_cuau, rsanode_out_abcdl};
