#
## Makefile for zuk ham
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
local-phone-apps := NfcNci PrintSpooler PacProcessor CertInstaller KeyChain \
	Stk qcrilmsgtunnel TimeService UserDictionaryProvider Bluetooth BluetoothMidiService \
	webview telresources \

local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider Tag \
	SharedStorageBackup InputDevices CellBroadcastReceiver BackupRestoreConfirmation \
	CMSettingsProvider \

local-modified-jars :=

local-miui-modified-apps :=

local-density := XHDPI
local-target-bit := 32

include $(PORT_BUILD)/porting.mk

$(local-zip-file):


pre-zip-misc:

