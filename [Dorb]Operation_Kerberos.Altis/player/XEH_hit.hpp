#define CBA_OFF
	#include "script_component.hpp"
#undef CBA_OFF
class B_Soldier_base_F {
    class ADDON {
        scope = 2;
        hit = "_this call dorb_player_XEH_hit;";
    };
};