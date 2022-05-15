var_blockNum = global.safety;
var_move = 0;
global.safety++;

if global.safety != 4 {
    var_destroy = irandom_range(1,4);
    if var_destroy > 1 {
        visible = 0;
        phy_active = 0;
    }
    if visible == 1 {
        var_trap = irandom_range(1,3);
        
        if var_trap == 3 {
            global.move = 1;
            var_move = 1;
        }
        else global.move = 0;
        
        var_trap = irandom_range(1,3);
        
        if var_trap == 1
            instance_create(phy_position_x,phy_position_y,obj_fire);
        else if var_trap == 2
            instance_create(phy_position_x,phy_position_y,obj_spike);
    }
}
else
    global.safety = 0;

//path_start(path0,2,3,false);

