//calculate position of each star
for (var i = 0; i < amount; i++) {
    xcoord[i] = x + lengthdir_x(distance[i], dir[i] + condir[i]);
    ycoord[i] = y + lengthdir_y(distance[i], dir[i] + condir[i]);
    condir[i] = condir[i] + const[i]
}

controllerdirection -= .1;
//transport player
if collision_circle(x, y, dist, obj_player, true, false) {
    draw = true;
    if keyboard_check_pressed(vk_enter) {
        switch (name) {
            case "MAJORIN":
                room_goto(rm_Majorin);
                obj_player.x = room_width/2;
                obj_player.y = room_height/2;
                break;
            case "MINORAN":
                room_goto(rm_Minoran);
                obj_player.x = room_width/2;
                obj_player.y = room_height/2;
                break;
            case "AXION":
                room_goto(rm_Axion);
                break;
            case "KORDA":
                room_goto(rm_Korda);
                obj_player.x = room_width/2;
                obj_player.y = room_height/2;
                break;
            case "BASK MINOR":
                room_goto(rm_Bask_Minor);
                obj_player.x = room_width/2;
                obj_player.y = room_height/2;
                break;
            case "BASK MAJOR":
                room_goto(rm_Bask_Major);
                obj_player.x = room_width/2;
                obj_player.y = room_height/2;
                break; 
            case "SHOP":
                room_goto(rm_shop);
                break;  
            case "HOME":
                room_goto(rm_home);
                break;
            case "DEPOT":
                if room == rm_worldmap {
                    room_goto(rm_depot);
                } else if room == rm_paradise_worldmap{
                    room_goto(rm_paradise_depot);
                }
                break;
            case "SOCKET":
                if global.questphase == 3 {
                    room_goto(rm_socket);
                } else {
                    if room == rm_worldmap {
                        room_goto(rm_sandbox_worldmap);
                    } else {
                        room_goto(rm_worldmap);
                    }
                }
                break;                        
        }
    }
} else {
    draw = false;
}

if name == "SHOP" || name == "HOME" || name == "DEPOT" || name == "SOCKET" {
    image_angle -= .5;
}

