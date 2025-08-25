- element: "'span.inform'"
  label: "'Status'"
  type: "'container'"
  components:
    - type: "'parameter'"
    - chart: "'online'"
      type: "'overview-dot'"
- element: "'span.inform'"
  label: "'Merek'"
  type: "'container'"
  components:
    - type: "'parameter'"
    - chart: "'merek'"
      type: "'overview-dot'"
- label: "'Serial number'"
  parameter: VirtualParameters.SerialNumber
  type: "'device-link'"
  components:
    - type: "'parameter'"
- label: "'Suhu'"
  parameter: VirtualParameters.Suhu
- label: "'Uptime'"
  parameter: VirtualParameters.UpTimeDHMS
- label: "'Product class'"
  parameter: VirtualParameters.ProductClass
- label: "'Software version'"
  parameter: VirtualParameters.SoftwareVersion
- label: "'IP'"
  parameter: VirtualParameters.IP-Address
- label: "'SSID 1'"
  parameter: VirtualParameters.SSID1
- label: "'Signal'"
  parameter: VirtualParameters.Signal
- label: "'Username'"
  parameter: VirtualParameters.PPPoEUser
- label: "'Keterangan'"
  type: "'tags'"
  unsortable: true
  writable: true
- type: "'summon-button'"
  parameters:
  - Device
  - Device.Cellular
  - Device.DHCPv4
  - Device.DHCPv4.Client
  - Device.DHCPv4.ClientNumberOfEntries
  - Device.DHCPv4.Server
  - Device.DNS
  - Device.DeviceInfo
  - Device.DeviceInfo.Description
  - Device.DeviceInfo.HardwareVersion
  - Device.DeviceInfo.Manufacturer
  - Device.DeviceInfo.ManufacturerOUI
  - Device.DeviceInfo.MemoryStatus
  - Device.DeviceInfo.ModelName
  - Device.DeviceInfo.ProcessStatus
  - Device.DeviceInfo.ProductClass
  - Device.DeviceInfo.ProvisioningCode
  - Device.DeviceInfo.SerialNumber
  - Device.DeviceInfo.SoftwareVersion
  - Device.DeviceInfo.UpTime
  - Device.DeviceInfo.VendorConfigFile
  - Device.DeviceInfo.VendorConfigFileNumberOfEntries
  - Device.DeviceInfo.X_MIKROTIK_ArchName
  - Device.DeviceInfo.X_MIKROTIK_AutosupoutTime
  - Device.DeviceInfo.X_MIKROTIK_BrandingPckgBuildTime
  - Device.DeviceInfo.X_MIKROTIK_SystemIdentity
  - Device.DeviceSummary
  - Device.Ethernet
  - Device.Ethernet.Interface
  - Device.Ethernet.InterfaceNumberOfEntries
  - Device.Ethernet.Link
  - Device.Ethernet.LinkNumberOfEntries
  - Device.Firewall
  - Device.Firewall.X_MIKROTIK_ConnTrack
  - Device.Firewall.X_MIKROTIK_Filter
  - Device.Firewall.X_MIKROTIK_NAT
  - Device.Hosts
  - Device.Hosts.Host
  - Device.Hosts.HostNumberOfEntries
  - Device.IP
  - Device.IP.Diagnostics
  - Device.IP.Interface
  - Device.IP.InterfaceNumberOfEntries
  - Device.InterfaceStack
  - Device.InterfaceStackNumberOfEntries
  - Device.ManagementServer
  - Device.ManagementServer.AliasBasedAddressing
  - Device.ManagementServer.ConnectionRequestPassword
  - Device.ManagementServer.ConnectionRequestURL
  - Device.ManagementServer.ConnectionRequestUsername
  - Device.ManagementServer.InformParameter
  - Device.ManagementServer.InformParameterNumberOfEntries
  - Device.ManagementServer.ParameterKey
  - Device.ManagementServer.Password
  - Device.ManagementServer.PeriodicInformEnable
  - Device.ManagementServer.PeriodicInformInterval
  - Device.ManagementServer.URL
  - Device.ManagementServer.Username
  - Device.PPP
  - Device.PPP.Interface
  - Device.PPP.InterfaceNumberOfEntries
  - Device.RootDataModelVersion
  - Device.Routing
  - Device.Routing.Router
  - Device.Routing.RouterNumberOfEntries
  - Device.WiFi
  - Device.WiFi.AccessPoint
  - Device.WiFi.AccessPointNumberOfEntries
  - Device.WiFi.NeighboringWiFiDiagnostic
  - Device.WiFi.Radio
  - Device.WiFi.RadioNumberOfEntries
  - Device.WiFi.SSID
  - Device.WiFi.SSIDNumberOfEntries
  - Device.X_MIKROTIK_Interface
  - DeviceID.ID
  - DeviceID.Manufacturer
  - DeviceID.OUI
  - DeviceID.ProductClass
  - DeviceID.SerialNumber
  - Events.1_BOOT
  - Events.Inform
  - Events.Registered
  - Tags
  - VirtualParameters
  - VirtualParameters.IP-Address
  - VirtualParameters.PPPoEPassword
  - VirtualParameters.PPPoEUser
  - VirtualParameters.ProductClass
  - VirtualParameters.SSID1
  - VirtualParameters.SSID2
  - VirtualParameters.SerialNumber
  - VirtualParameters.Signal
  - VirtualParameters.SoftwareVersion
  - VirtualParameters.Suhu
  - VirtualParameters.UpTimeDHMS
  - VirtualParameters.WANStatus
  - VirtualParameters.WiFi-Password1
  - VirtualParameters.WiFi-Password2
  - VirtualParameters.hwFirewall
  