//
// ktRACK41
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 2;

W = 69;
W2 = 87;
W3 = 49;



difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(r=W/2, h=15, $fn=100);
        
    }
    //translate([-25+gap1, 55/2,    0]) cube([20, 20, 20]);
    //translate([-5,       55/2+20,    0]) rotate([0, -10, 180]) cube([20, 20, 9]);
    
    translate([-15, -55/2-20, -3]) rotate([0, -5, 0]) cube([25, 20, 11]);
    translate([-10+gap1-6, -55/2-20, -3]) cube([10, 20, 11]);
    translate([ 5,      -55/2-20, 0]) cube([20, 20, 20]);

    rotate([0, 0, 180]){
    translate([-15, -55/2-20, -3]) rotate([0, -5, 0]) cube([25, 20, 11]);
    translate([-10+gap1-6, -55/2-20, -3]) cube([10, 20, 11]);
    translate([ 5,      -55/2-20, 0]) cube([20, 20, 20]);
    }


    translate([    0, 0, -10]) cylinder(r=30/2, h=50, $fn=100);
    translate([ W3/2, 0, -10]) cylinder(r=5/2, h=50, $fn=100);
    translate([-W3/2, 0, -10]) cylinder(r=5/2, h=50, $fn=100);

    //translate([ W3/2, 0, 5]) cylinder(r=11/2, h=50, $fn=100);
    //translate([-W3/2, 0, 5]) cylinder(r=11/2, h=50, $fn=100);
    #translate([-W/2, -30/2, 10]) cube([W, 30, 11]);
}

difference()
{
    union()
    {
        translate([0, 0, -th]) cylinder(r=(W2+3)/2, h=th+3, $fn=100);
    }
    translate([0, 0, 0]) cylinder(r=(W2+3-1)/2, h=3+gap1, $fn=100);
    //translate([0, 0, 0]) cylinder(r=(W2+3+gap2)/2, h=3+gap1, $fn=100);
    
    translate([    0, 0, -10]) cylinder(r=30/2, h=50, $fn=100);
    translate([ W3/2, 0, -10]) cylinder(r=5/2, h=50, $fn=100);
    translate([-W3/2, 0, -10]) cylinder(r=5/2, h=50, $fn=100);
}



module unit()
{
translate([0, -D/2, 0])
{
    translate([-(W-D)/2, 0, D/2]) cube([W-D, D, H-D]);
    
    translate([-W/2+D/2, D/2, D]) rotate([0, 0, 0]) cylinder(r=D/2, h=H-D*2, $fn=100);
    translate([-W/2+D, D/2, H-D]) rotate([90, -90, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([D/2, 0, 0]) circle(r=D/2, $fn=100);
    
    translate([-W/2+D, D/2, H-D/2]) rotate([0, 90, 0]) cylinder(r=D/2, h=W-D*2, $fn=100);
    translate([ W/2-D, D/2, H-D]) rotate([90, 0, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([D/2, 0, 0]) circle(r=D/2, $fn=100);

    translate([ W/2-D/2, D/2, D]) rotate([0, 0, 0]) cylinder(r=D/2, h=H-D*2, $fn=100);
    translate([ W/2-D, D/2, D]) rotate([90, 90, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([D/2, 0, 0]) circle(r=D/2, $fn=100);

    translate([-W/2+D, D/2, D/2]) rotate([0, 90, 0]) cylinder(r=D/2, h=W-D*2, $fn=100);
    translate([-W/2+D, D/2, D]) rotate([90, 180, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([D/2, 0, 0]) circle(r=D/2, $fn=100);
}
}