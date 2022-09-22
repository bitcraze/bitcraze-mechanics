pipe_rad = 18.7 / 2;
string_rad = 6;
depth = 22;

box_x = 45;
box_y = 53;
box_z = 26;

difference() {
    cube(size=[box_x, box_y, box_z]);
    translate([box_z / 2, depth - 1, box_z / 2])
        rotate([90, 0, 0])
            cylinder(r=pipe_rad, h=depth);
    translate([box_z / 2, box_y + 1, box_z / 2])
        rotate([90, 0, 0])
            cylinder(r=pipe_rad, h=depth);
    translate([box_x - depth + 1, box_y / 2, box_z / 2])
        rotate([0, 90, 0])
            cylinder(r=pipe_rad, h=depth);
    translate([box_x - string_rad - 4, string_rad + 4, -1])
        cylinder(r=string_rad, h=box_z + 2);
    translate([box_x - string_rad - 4, box_y - string_rad - 4, -1])
        cylinder(r=string_rad, h=box_z + 2);
}