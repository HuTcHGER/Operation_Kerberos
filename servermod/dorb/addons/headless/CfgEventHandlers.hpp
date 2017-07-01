class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};
class Extended_PostInit_EventHandlers {
    class DOUBLES(ADDON,SERVER) {
        serverinit = QUOTE(call COMPILE_FILE(XEH_ServerpostInit));
    };
    class DOUBLES(ADDON,CLIENT) {
        clientinit = QUOTE(call COMPILE_FILE(XEH_ClientpostInit));
    };
};
class Extended_Init_EventHandlers {
    class ADDON {
        initServer = QUOTE(call COMPILE_FILE(XEH_InitServer));
    };
};
