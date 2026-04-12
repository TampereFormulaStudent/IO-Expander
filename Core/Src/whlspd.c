#include "whlspd.h"

static bool whlspd_rr_trig = false;
static bool whlspd_rl_trig = false;
static bool car_is_moving = false;

void set_whlspd_rr_trig(bool state) {
    whlspd_rr_trig = state;
}

bool get_whlspd_rr_trig() {
    return whlspd_rr_trig;
}

void set_whlspd_rl_trig(bool state) {
    whlspd_rl_trig = state;
}

bool get_whlspd_rl_trig() {
    return whlspd_rl_trig;
}

bool is_car_moving() {
    return car_is_moving;
}

void car_started_moving() {
    car_is_moving = true;
}
