class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};

class Extended_PostInit_EventHandlers {
    class DOUBLES(ADDON,SERVER) {
        serverinit = QUOTE(call COMPILE_FILE(XEH_postinitServer));
    };
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_postinit));
    };
};
