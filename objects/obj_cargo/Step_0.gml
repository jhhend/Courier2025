if collision_circle(x, y, detrad, obj_player, true, false) {
    draw = true;
    var num = -1;
    if keyboard_check_pressed(vk_enter) {
        if global.hull[0] == " " {
            num = 0;
        } else if global.hull[0] == "X" && global.hull[1] == " " {
            num = 1;
        } else if global.hull[0] == "X" && global.hull[1] == "X" && global.hull[2] == " " {
            num = 2;
        }
        
        if num > -1 && num < 3 {
            global.cargoname[num] = name;
            global.cargoval[num] = price;
            global.cargodest[num] = destination;
            global.cargostat[num] = status;
            switch (status) {
                case "Legal":
                    global.slotcol[num] = c_aqua; break;
                case "Illegal":
                    global.slotcol[num] = c_red; break;
                case "Police":
                    global.slotcol[num] = c_police; break;
                case "Thief":
                    global.slotcol[num] = c_thief; break;
                case "Alien":
                    global.slotcol[num] = c_alien; break;
                case "Cult":
                    global.slotcol[num] = c_cult; break;
            }
            global.hull[num] = "X" 
            destroy_self(); 
        }
    }
} else {
    draw = false;
}

