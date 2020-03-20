|           #######                        #######                      #######
|      ##################            ##################           #############
|   #######################       #######################       ###############
|  ##########      #########     ########         ########    ###########     #
| ########           ########   ########           ########  #########
|########            ########  ###########################  ########
|########            ########  ###########################  ########
| #########          ########   ########                      ########
|  ###########   ###########     #########        #####        ###########   ##
|    ######################        ######################       ###############
|      #################              #################            ############
|             ###                            ###                          ###


# Scheduled Maintenance
	Group of scripts set to run weekly for maintenance of work computers.


TaskLog calls and logs the work of RecycleClean, TempClear, and NetRes

RecycleClean clears out all files from $RECYCLE.BIN

TempClear clears out all temp files older than 7 days from %TEMP% and %WINDIR%/temp

NetRes cleans up network settings (DNS/IP settings) and restarts the computer
