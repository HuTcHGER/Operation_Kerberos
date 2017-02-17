/*
 *  Author: Dorbedo
 *
 *  Description:
 *      the config of the component
 *
 */
#define CBA_OFF
#include "script_component.hpp"

class DOUBLES(CfgComponent,ADDON) {
    class preinit {};
    class dependencies {
        CfgPatches[] = {};
        CfgComponents[] = {"common","gui"};
    };
    class features {
        save = CSTRING(FEATURES_SAVE);
    };
};

#include "config\dialog.hpp"