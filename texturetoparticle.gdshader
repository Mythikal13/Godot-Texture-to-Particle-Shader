shader_type canvas_item;

uniform int grid_size = 4;

varying flat int ID;
varying flat float grid_x;
varying flat float grid_y;
void vertex() {
	ID = INSTANCE_ID;
	float id = float(ID)/float(grid_size);
	float idf;
	grid_x = modf(id, idf);
	grid_y = idf/float(grid_size);
}


void fragment() {	
	vec2 grid = vec2(float(grid_size),float(grid_size));
	vec2 cells = fract(UV * grid);
	if(UV.x > grid_x && UV.x < grid_x + (1.0/float(grid_size))){
		COLOR.a *= 1.0;
		if(UV.y > grid_y && UV.y < grid_y + (1.0/float(grid_size))){
			COLOR.a *= 1.0;
		} else{
			COLOR.a = 0.0;
		}
	} else{
		COLOR.a = 0.0;
	}


}
