for (var i = 0; i < amount; i++) {
    switch (global.tdir) {
        case TO:
            xcoord[i] = xcoord[i] + offset;
            break;
        case FROM:
            xcoord[i] = xcoord[i] - offset;
            break;            
    }
}

