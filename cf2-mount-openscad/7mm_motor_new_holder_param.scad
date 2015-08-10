outer_radius = 4.5;
inner_radius_bottom = 3.55;
inner_radius_top = 3.55;
stop_radius  = 3;

outer_height = 9;
stop_height = 1;

bend_slit_width = 1;
cable_slit_width = 3;
cable_slit_height = 12;
cable_slit_to_wingstop = 1;

stop_width = 1;

cable_guide_owidth = 3;
cable_guide_width = 1.2;
cable_guide_height = 1.5;

wing_width = 3.3;
wing_height = 2.2;
wing_wall = 1;
wing_length = 15;

$fn=50;

difference() {

	union() {
		scale([0.95, 1.05, 1]) cylinder(outer_height, outer_radius, outer_radius);
		translate([0, -(wing_width+(2*wing_wall))/2, 0]) {
			difference() {
				cube([wing_length+outer_radius+stop_width+cable_slit_to_wingstop, wing_width+(2*wing_wall), wing_height+(2*wing_wall)]);
				translate([outer_radius+stop_width+cable_slit_to_wingstop, wing_wall, wing_wall]) {
					cube([wing_length, wing_width, wing_height]);
				}
			}
		}
		//Cable guides
		translate([outer_radius+cable_slit_to_wingstop, -(cable_guide_owidth)/2, wing_height+(2*wing_wall)]) {
			difference() {
				cube([wing_length, cable_guide_owidth, cable_guide_height]);
				translate([0, (cable_guide_owidth-cable_guide_width)/2, 0]) {
					cube([wing_length, cable_guide_width, cable_guide_height]);
				}
			}
		}
	}


	scale([0.95, 1.05, 1]) cylinder(outer_height, stop_radius, stop_radius);
	scale([0.95, 1.05, 1]) cylinder(outer_height - stop_height, inner_radius_top, inner_radius_bottom);
	translate([0, -cable_slit_width/2, outer_height-cable_slit_height]) {
		cube([outer_radius+cable_slit_to_wingstop,cable_slit_width,cable_slit_height]);
	}
}


