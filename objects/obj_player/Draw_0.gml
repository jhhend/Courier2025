//draw self
var pcol;
draw_sprite_ext(sprite_index , 0, x, y, image_xscale, image_yscale, image_angle, global.color, 1);
switch (global.blessing) {
    case false: pcol = c_white; break;
    case true: pcol = merge_colour(c_white, c_purple, .5); break;
}
draw_sprite_ext(sprite_index , 1, x, y, image_xscale, image_yscale, image_angle, pcol, 1);


draw_set_font(fnt_hud);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

//draw room name
var s;
if room == rm_worldmap || room == rm_paradise_worldmap || room == rm_sandbox_worldmap {
    s = "";
} else if room == rm_Bask_Minor || room == rm_Bask_Major {
    s = remove_prefix_underscore(room);     
} else {
    s = remove_prefix(room);
} 
draw_set_font(fnt_hud);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2), __view_get( e__VW.YView, 0 )+8, string_hash_to_newline(string(s)));

//dull hud if player flies underneath text
if (room == rm_worldmap || room == rm_paradise_worldmap || room == rm_sandbox_worldmap) && collision_rectangle(0, 0, 128, 200, obj_player, true, false) {
    draw_set_alpha(.25);
} else {
    draw_set_alpha(1);
}

//draw currency
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(__view_get( e__VW.XView, 0 )+16, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline("Currency: $" + string(global.state.money)));

//draw sheilds
var str, col;
switch (global.shields) {
    case 0: str = "[][][]"; col = c_red; break;
    case 1: str = "[ ][][]"; col = c_orange; break;
    case 2: str = "[ ][ ][]"; col = c_yellow; break;
    case 3: str = "[ ][ ][ ]"; col = c_lime; break;
}
draw_set_color(col)
draw_text(__view_get( e__VW.XView, 0 )+16, __view_get( e__VW.YView, 0 )+31, string_hash_to_newline(string(str)));
draw_set_color(c_white);

//draw faction
var fstr, fcol;
switch (global.faction) {
    case -1: fstr = "[NEUTRAL]"; fcol = c_gray; break;
    case POLICE: fstr = "[POLICE]"; fcol = c_police; break;
    case THIEF: fstr = "[THIEF]"; fcol = c_thief; break;
    case ALIEN: fstr = "[ALIEN]"; fcol = c_alien; break;
    case CULT: fstr = "[CULTIST]"; fcol = c_cult; break;
}

draw_set_color(fcol);
draw_text(__view_get( e__VW.XView, 0 )+16, __view_get( e__VW.YView, 0 )+31+16, string_hash_to_newline(string(fstr)));
draw_set_color(c_white);

//draw slots
draw_slots();

//draw wanted
if global.murder > 0 {
    draw_set_color(c_red);
    draw_text(__view_get( e__VW.XView, 0 )+16, __view_get( e__VW.YView, 0 )+224-48+8+16, string_hash_to_newline("[WANTED]"));
    draw_set_color(c_white);
}

//draw system arrows
switch (global.state.hud) {
    case 3:
        if instance_exists(obj_criminal) && !collision_circle(obj_criminal.x, obj_criminal.y, 64, self, true, false) {
            draw_sprite_ext(spr_arrow, 1, x, y, 1, 1, point_direction(x, y, obj_criminal.x, obj_criminal.y), c_olive, 1);
        }
    case 2:
        if instance_exists(obj_cargo) {
            var cx, cy, col;
                cx = instance_nearest(x, y, obj_cargo).x
                cy = instance_nearest(x, y, obj_cargo).y;
                switch (instance_nearest(x, y, obj_cargo).status) {
                    case "Legal": col = c_aqua; break;
                    case "Illegal": col = c_red; break;
                    case "Police": col = c_police; break;
                    case "Thief": col = c_thief; break;
                    case "Alien": col = c_alien; break;
                    case "Cult": col = c_cult; break;
                }
            draw_sprite_ext(spr_arrow, 1, x, y, 1, 1, point_direction(x, y, cx, cy), col, 1);
        }
    case 1:
        if instance_exists(obj_dropoff) && !collision_circle(obj_dropoff.x, obj_dropoff.y, 226, self, true, false) {
            draw_sprite_ext(spr_arrow, 1, x, y, 1, 1, point_direction(x, y, obj_dropoff.x, obj_dropoff.y), c_teal, 1);
        }        
        break;
}

switch (global.faction) {
    case POLICE:
        o = obj_police_dropzone; c = c_police; break;
    case THIEF:
        o = obj_thief_dropzone; c = c_thief; break;
    case ALIEN:
        o = obj_alien_dropzone; c = c_alien; break;
    case CULT:
        o = obj_cult_dropzone; c = c_cult; break;
    case -1:
        o = -1; c = c_white; break;
}

if o != -1 && instance_exists(o){
    draw_sprite_ext(spr_arrow_large, 0, x, y, 1, 1, point_direction(x, y, o.x, o.y), c, 1);
}

if drawability {
    var c;
    switch (global.faction) {
        case POLICE: c = c_police; break;
        case THIEF: c = c_thief; break;
        case ALIEN: c = c_alien; break;
        case CULT: c = c_cult; break;
        default: c = c_white; break;
    }
    draw_set_colour(c);
    draw_set_circle_precision(64);
    draw_circle(x, y, radius, true);
}

//draw ability and cooldown
var a, ab, c;
switch (global.faction) {
    case POLICE:
        a = 1;
        ab = "[SEARCH]";
        c = c_police;
        break;
    case THIEF:
        a = 1;
        ab = "[PICKPOCKET]"
        c = c_thief;
        break;
    case ALIEN:
        a = 1;
        ab = "[SWARM]";
        c = c_alien;
        break;
    case CULT:
        a = 1;
        ab = "[CONVERT]";
        c = c_cult;
        break;
    default:
        a = 0;
        ab = "";
        c = c_white;
        break;
}

draw_set_alpha(a);
draw_set_halign(fa_right);
draw_set_colour(c);
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-16, __view_get( e__VW.YView, 0 )+16, string_hash_to_newline(string(ab)));
draw_set_colour(c_white);
if obj_data.alarm[2] > 0 {
    draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-16, __view_get( e__VW.YView, 0 )+31, string_hash_to_newline(string(ceil(obj_data.alarm[2]/60)) + "s"));
}
draw_set_alpha(1);

//draw gem if player has it.
if (global.questphase == 3) {
    draw_set_font(fnt_diamond);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_colour(c_cult);
    draw_text(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2), __view_get( e__VW.YView, 0 )+(__view_get( e__VW.WView, 0 )-32), string_hash_to_newline("◆"))
}

if (global.settings.get("showFps")) {
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    draw_set_colour(c_yellow);
    draw_set_font(fnt_hud);
    draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-8, __view_get( e__VW.YView, 0 )+8, string_hash_to_newline(string(fps)));
}

if drawegg {
    draw_sprite_ext(spr_snoot, 0, x, y, 3, 3, image_angle, c_white, .5*sin(eggalpha)+.5);
}

