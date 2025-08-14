image_index++
rectalpha = 1;
var s;
switch (phase) {
    case 0: //unsocket to socket
        s = snd_ascend0;
        rotspd = .25;
        shake = 5;
        alpha = .92;
        break;
    case 1: //socket to front light
        s = snd_ascend1;
        rotspd = .5;
        shake = 6.66;
        alpha = .94;
        break;
    case 2: //front light to back light
        s = snd_ascend2;
        rotspd = 1;
        shake = 8.33;
        alpha = .96
        break;
    case 3: //back light to full purple
        s = snd_ascend3;
        rotspd = 5;
        shake = 10;
        alpha = .98;
        break;
    case 4:
        play_sound(snd_explode, 1, false);
        room_goto(rm_sandbox_worldmap); break;
}

play_sound(snd_explode, 1, false);

switch (phase) {
    case 0:
        play_sound(s, 2, false); break;
    default:
        if phase != 4 {
            repeat(phase) {
                play_sound(s, 2, false);
            }
        }
        break;
}

phase++;

alarm[0] = room_speed;

