switch alstring {
    case "[][][]":
        alstring = "[ ][][]";
        alcolor = c_orange;
        break;
    case "[ ][][]":
        alstring = "[ ][ ][]";
        alcolor = c_yellow;
        break;
    case "[ ][ ][]":
        alstring = "[ ][ ][ ]";
        alcolor = c_lime;
        break;
    case "[ ][ ][ ]":
        alstring = "[][][]";
        alcolor = c_red; 
        break;
}

if arcolor == c_aqua {
    arcolor = c_red;
} else if arcolor == c_red {
    arcolor = c_aqua;
}

alarm[0] = room_speed*alspeed;

