require("UPDATE_PATCH-HACK-MODULE")
function main()
    choice = 0
    function main_menu()
        choice = kurumi.choice(
            {
                "Loop_Boss",
                "MENU_Player_⛹️",
                "Exit"
            },
            choice,
            "Program developer : RTM RIOT\nIRUNA ONLINE TH & IRUNA ONLINE EN"
        )
        if choice == 1 then LOOPTESTING() end
        if choice == 2 then main_player() end
        if choice == 3 then exit() end
    end
    function LOOPTESTING()
        MAPINFO_OC_API()
        WalnutTable(API_OC[1].address + -420,4,false,"API_MAPINFO-OC",40861)
        WalnutTableNO(API_OC[1].address + -488,4,false,"20480")
        WalnutTableNO(API_OC[1].address + -480,4,false,"11520")
        WalnutTableNO(API_OC[1].address + -296,4,false,"65536")
        while true do
            t = kurumi.getListItems()
            for i, v in ipairs(t) do
                if v.value == 40861 then
                    kurumi.sleep(25*100)
                    WalnutTable(API_OC[1].address + -420,4,false,"API_MAPINFO-OC",40891)
                    WalnutTableNO(API_OC[1].address + -488,4,false,"20480")
                    WalnutTableNO(API_OC[1].address + -480,4,false,"11520")
                    WalnutTableNO(API_OC[1].address + -296,4,false,"65536")
                end
                if v.value == 40800 then
                    kurumi.sleep(25*100)
                    WalnutTable(API_OC[1].address + -420,4,false,"API_MAPINFO-OC",40861)
                    WalnutTableNO(API_OC[1].address + -488,4,false,"20480")
                    WalnutTableNO(API_OC[1].address + -480,4,false,"11520")
                    WalnutTableNO(API_OC[1].address + -296,4,false,"65536")
                end
                if v.value == 51000 then
                    kurumi.sleep(25*100)
                    WalnutTable(API_OC[1].address + -420,4,false,"API_MAPINFO-OC",40861)
                    WalnutTableNO(API_OC[1].address + -488,4,false,"20480")
                    WalnutTableNO(API_OC[1].address + -480,4,false,"11520")
                    WalnutTableNO(API_OC[1].address + -296,4,false,"65536")
                end
            end
        end
        
    end
    function main_player()
        choice1 = 0
        function Player()
           choice1 = kurumi.choice
            (
                {
                    "Function_Player_AT",
                    "Function_Player_SB",
                    "Function_Player_BT",
                    "Black"
                },
                choice1,
                "Program developer : RTM RIOT\nIRUNA ONLINE TH & IRUNA ONLINE EN"
            )
            if choice1 == 1 then AT() end
            if choice1 == 2 then SB() end
            if choice1 == 2 then BT() end
            if choice1 == 3 then main_menu() end 
        end
        function AT()
            Player_IC_API()
			Insearch_PlayerOC_Three(-284,4,true,256,"AutoTalk")
			Insearch_PlayerOC(-60,0x30,4,4,true,true,"Attack_Level[10]",0,-250,0,0)
			Insearch(27007,27007,4,1)WalnutTable(OC[1].address -140,4,true,"Javali",15)
			R = kurumi.prompt({"Speed run[0;15]"},nil,{"Number"})
			WalnutTable(API_IC[1].address + 0x28,16,true,"Run",R[1])
        end
        function SB()
            Teleport_set(51000,17920,19200)                                                                                                            
			kurumi.toast("Please wait a moment")
			kurumi.sleep(3500)
			Insearch(User_1_playeroc,180,4,100)
			For_set(OC,-1,true,"Bornimmediately")                                                                                                      
			WalnutTable(API_OC[1].address -284,4,true,"AutoTalk",256)
			kurumi.toast("The system is working successfully")
        end
        function BT()
            Player_IC_API()
            WalnutTable(API_IC[1].address + 0x28,16,true,"Run",50*100)
        end
        Player()
    end
    function exit()
        os.exit()
    end
    main_menu()
end

while true do
    if kurumi.isVisible(true) then
        kurumi.setVisible(false)
        main()
    end
end