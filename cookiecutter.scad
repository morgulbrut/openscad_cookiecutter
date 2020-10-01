module cookiecutter(wall = 1) {
    union(){
        linear_extrude(10){
            difference() {
                offset(wall) children();
                children();
            }
        }
        linear_extrude(1){
            difference() {
                offset(5*wall) children();
                children();
            }
        }
    }
}

cookiecutter() import("input.svg",center=true);
