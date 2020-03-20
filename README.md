               #######                        #######                      #######
          ##################            ##################           #############
       #######################       #######################       ###############
      ##########      #########     ########         ########    ###########     #
     ########           ########   ########           ########  #########
    ########            ########  ###########################  ########
    ########            ########  ###########################  ########
     #########          ########   ########                      ########
      ###########   ###########     #########        #####        ###########   ##
        ######################        ######################       ###############
          #################              #################            ############
                 ###                            ###                          ###


# Scheduled Maintenance
	Group of scripts set to run weekly for maintenance of work computers.


TaskLog calls and logs the work of RecycleClean, TempClear, WinCacheClear, and NetRes

RecycleClean clears out all files from $RECYCLE.BIN

TempClear clears out all temp files older than 7 days from %TEMP% and %WINDIR%/temp

WinCacheClear deletes the Windows Update Cache and then restarts the Windows Update Service

NetRes cleans up network settings (DNS/IP settings) and restarts the computer
