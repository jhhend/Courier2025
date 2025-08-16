
function set_shop_buttons() {
	if global.state.shd >= 1 {text[0] = "PURCHASED"} else {text[0] = "Shields 1"};
	if global.state.shd >= 2 {text[1] = "PURCHASED"} else {text[1] = "Shields 2"};
	if global.state.shd >= 3 {text[2] = "PURCHASED"} else {text[2] = "Shields 3"};
	if global.state.wep >= 1 {text[3] = "PURCHASED"} else {text[3] = "Weapons 1"};
	if global.state.wep >= 2 {text[4] = "PURCHASED"} else {text[4] = "Weapons 2"};
	if global.state.wep >= 3 {text[5] = "PURCHASED"} else {text[5] = "Weapons 3"};
	if global.state.hud >= 1 {text[6] = "PURCHASED"} else {text[6] = "Systems 1"};
	if global.state.hud >= 2 {text[7] = "PURCHASED"} else {text[7] = "Systems 2"}
	if global.state.hud >= 3 {text[8] = "PURCHASED"} else {text[8] = "Systems 3"};
}
