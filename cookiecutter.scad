thickness = 1; // [0:0.1:3]
height = 10; // [0:0.1:15]
scale =1; // [0:0.1:3]
input_file = "input.svg";


module cookiecutter(wall = 1) {
  scale([scale,scale,1]){
        union(){
            linear_extrude(height){
                difference() {
                    offset(wall) children();
                    children();
                }
            }
            translate([0,0,height]){
                linear_extrude(1){
                    difference() {
                        offset(5*wall) children();
                        children();
                    }
                }
            }
        }
    }
}


 cookiecutter(thickness/scale) import(input_file,center=true);
