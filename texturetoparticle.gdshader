shader_type canvas_item;

uniform int grid_size = 4;

varying flat int ID;
varying flat float grid_x;
varying flat float grid_y;
void vertex() {
	// Called for every vertex the material is visible on.
	ID = INSTANCE_ID;
	float id = float(ID)/float(grid_size);
	float idf;
	grid_x = modf(id, idf);
	grid_y = idf/float(grid_size);
	//grid_x += (mod(float(ID),4.0)/float(grid_size))/4.0;
}


void fragment() {
	// Called for every pixel the material is visible on.
	
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
	
	//float rand_x = random(UV);
	//float rand_y = random(UV);
	//if (UV.x < rand_x){
	//	COLOR.a = 0.0;
	//}
	//if (UV.y < rand_y){
	//	COLOR.a = 0.0;
	//}
	

}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
