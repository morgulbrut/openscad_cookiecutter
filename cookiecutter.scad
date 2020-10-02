thickness = 1;
height = 10;
input_file = "input.svg";


module cookiecutter(wall = 1) {
    union(){
        linear_extrude(height){
            difference() {
                offset(wall) children();
                children();
            }
        }
        translate([0,0,10]){
            linear_extrude(1){
                difference() {
                    offset(5*wall) children();
                    children();
                }
            }
        }
    }
}

cookiecutter(thickness) import(input_file,center=true);
