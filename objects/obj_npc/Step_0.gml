/// @description Insert description here
// You can write your code in this editor


switch (state) {
	case global.ATTACK: {
		if (attack == false) {
			attack = true;
			alarm[0] = attack_delay;
		}
		break; // YES INTENTIONALLY
	}
	case global.DEFEND: {
		if (defend == false) {
			defend = true;
			alarm[1] = defend_delay;
		}
		break;
	}
}
