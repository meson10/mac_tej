#---------------------------------------------------------------------
# Remove Spotlight
#---------------------------------------------------------------------
sudo mdutil -a -i off
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search; killall SystemUIServer
#sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist

#---------------------------------------------------------------------
# Remove Notification Center
#---------------------------------------------------------------------
sudo chmod 600 /System/Library/CoreServices/NotificationCenter.app/Contents/MacOS/NotificationCenter;killall NotificationCenter; killall Dock
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

#---------------------------------------------------------------------
# Minimize Dock
#---------------------------------------------------------------------
sudo defaults write com.apple.dock pinning -string start
sudo defaults write com.apple.dock tilesize -int 20

#---------------------------------------------------------------------
# Remove Dashboard
#---------------------------------------------------------------------
sudo defaults write com.apple.dashboard mcx-disabled -boolean YES

#---------------------------------------------------------------------
# Disbale MissionControl
#---------------------------------------------------------------------
sudo defaults write com.apple.dock mcx-expose-disabled -bool TRUE

#---------------------------------------------------------------------
# Disbale Hibernation
#---------------------------------------------------------------------
sudo pmset -a hibernatemode 0
sudo rm -rf /var/run/sleepimage

#---------------------------------------------------------------------
# Disbale ReportCrash
#---------------------------------------------------------------------
sudo defaults write com.apple.CrashReporter DialogType none
com.apple.ReportCrash.Self.plist
com.apple.ReportCrash.plist
com.apple.ReportPanic.plist
com.apple.ReportGPURestart.plist
com.apple.SocialPushAgent.plist

sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.ReportCrash.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.ReportCrash.Root.plist

#---------------------------------------------------------------------
# Disbale Bluetooth
#---------------------------------------------------------------------
#launchctl unload -w /System/Library/LaunchAgents/com.apple.bluetoothUIServer.plist
#launchctl unload -w /System/Library/LaunchAgents/com.apple.bluetoothAudioAgent.plist
#sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.blued.plist
#sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.bnepd.plist
#sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.IOBluetoothUSBDFU.plist

#---------------------------------------------------------------------
# Disbale faceTime
#---------------------------------------------------------------------
launchctl unload -w /System/Library/LaunchAgents/com.apple.imagent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.iChat.Theater.plist

#---------------------------------------------------------------------
# Disbale AppStoreHelpers
#---------------------------------------------------------------------

#launchctl unload -w /System/Library/LaunchAgents/com.apple.storeagent.plist
#launchctl unload -w /System/Library/LaunchAgents/com.apple.store_helper.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.maspushagent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.softwareupdate_notify_agent.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.locationd.plist
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.softwareupdated.plist

#---------------------------------------------------------------------
# Disbale QuickLookHelper
#---------------------------------------------------------------------

launchctl unload -w /System/Library/LaunchAgents/com.apple.quicklook.32bit.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.quicklook.config.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.quicklook.plist 
launchctl unload -w /System/Library/LaunchAgents/com.apple.quicklook.ui.helper.plist

#---------------------------------------------------------------------
# Disbale Pasteboard
#---------------------------------------------------------------------
#launchctl unload -w /System/Library/LaunchAgents/com.apple.pboard.plist
#launchctl unload -w /System/Library/LaunchAgents/com.apple.pbs.plist

#---------------------------------------------------------------------
# Disbale Calendar
#---------------------------------------------------------------------
launchctl unload -w /System/Library/LaunchAgents/com.apple.CalendarAgent.plist

#---------------------------------------------------------------------
# Disbale GameCenter
#---------------------------------------------------------------------
launchctl unload -w /System/Library/LaunchAgents/com.apple.gamed.plist

#---------------------------------------------------------------------
# Disbale Twitter
#---------------------------------------------------------------------
launchctl unload -w /System/Library/LaunchAgents/twitterd.plist

#---------------------------------------------------------------------
# Disbale Location
#---------------------------------------------------------------------
launchctl unload -w /System/Library/LaunchAgents/com.apple.locationmenu.plist

#---------------------------------------------------------------------
# Disbale ParentalControl
#---------------------------------------------------------------------
launchctl unload -w /System/Library/LaunchAgents/com.apple.familycontrols.useragent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.parentalcontrols.check.plist

#---------------------------------------------------------------------
# Disbale Airplay
#---------------------------------------------------------------------
launchctl unload -w /System/Library/LaunchAgents/com.apple.AirPlayUIAgent.plist

#---------------------------------------------------------------------
# Disbale Speech & Voice
#---------------------------------------------------------------------
sudo rm -rf /System/Library/Speech/Voices/
launchctl unload -w /System/Library/LaunchAgents/com.apple.VoiceOver.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.speech.voiceinstallerd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.speech.synthesisserver.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.speech.recognitionserver.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.speech.feedbackservicesserver.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.speech.speechsynthesisd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.speech.speechdatainstallerd.plist

#---------------------------------------------------------------------
# Disbale SWAP
#---------------------------------------------------------------------
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.dynamic_pager.plist
sudo rm /private/var/vm/swapfile*

#---------------------------------------------------------------------
# Disbale Sudden Motion Sensor
#---------------------------------------------------------------------
sudo pmset -a sms 0

#---------------------------------------------------------------------
# Disbale Wake on Power
#---------------------------------------------------------------------
sudo pmset -a womp 0

#Push the StandbyDelay(write RAM to SSD) at end of day.
sudo pmset -a standbydelay 0

#---------------------------------------------------------------------
# Disbale AirDrop
#---------------------------------------------------------------------
sudo defaults write com.apple.NetworkBrowser DisableAirDrop -bool YES

#---------------------------------------------------------------------
# Disbale Address Book
#---------------------------------------------------------------------
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.AddressBook.SourceSync.plist
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.AddressBook.abd.plist

#---------------------------------------------------------------------
# Disbale AirportBase Station
#---------------------------------------------------------------------
sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.AirPortBaseStationAgent.plist

#---------------------------------------------------------------------
# Disbale iCloud Notifications
#---------------------------------------------------------------------
launchctl unload -w /System/Library/LaunchAgents/com.apple.icloud.AOSNotificationAgent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.icloud.AOSNotificationLoginAgent.plist

#---------------------------------------------------------------------
# Disbale Location TimeMachine Snapshots
#---------------------------------------------------------------------
sudo tmutil disablelocal

#---------------------------------------------------------------------
# Set NoAtime
#---------------------------------------------------------------------
set noAtime
cat << EOF | sudo tee /Library/LaunchDaemons/com.nullvision.noatime.plist > /dev/null
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
    <dict>
        <key>Label</key>
        <string>com.nullvision.noatime</string>
        <key>ProgramArguments</key>
        <array>
            <string>mount</string>
            <string>-vuwo</string>
            <string>noatime</string>
            <string>/</string>
        </array>
        <key>RunAtLoad</key>
        <true />
    </dict>
</plist>
EOF

chown root:wheel /Library/LaunchDaemons/com.nullvision.noatime.plist
chmod 644 /Library/LaunchDaemons/com.nullvision.noatime.plist
launchctl load -w /Library/LaunchDaemons/com.nullvision.noatime.plist


#---------------------------------------------------------------------
# Remove Printers
#---------------------------------------------------------------------
sudo rm -rf /Library/Printers/

#---------------------------------------------------------------------
# Disbale Thumbnails in Safari Quick Access
#---------------------------------------------------------------------
sudo defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2


#Disable Sync
launchctl unload -w /System/Library/LaunchAgents/com.apple.RemoteDesktop.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.SafariNotificationAgent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.bookstoreagent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.UserNotificationCenterAgent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.UserNotificationCenterAgent-LoginWindow.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.ZoomWindow.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.helpd.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.java.updateSharing.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.java.InstallOnDemand.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.screensharing.agent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.screensharing.MessagesAgent.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.security.cloudkeychainproxy.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.syncservices.SyncServer.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.syncservices.uihandler.plist
launchctl unload -w /System/Library/LaunchAgents/com.apple.findmymacmessenger.plist
