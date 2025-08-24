- label: "'Summary'"
  route: "'summary'"
  components:
    - type: "'tags'"
    - type: "'ping'"
    - type: "'parameter-list'"
      parameters:
        - element: "'span.inform'"
          label: "'Last Inform'"
          parameter: DATE_STRING(Events.Inform)
          type: "'container'"
          components:
            - type: "'parameter'"
            - chart: "'online'"
              type: "'overview-dot'"
            - type: "'summon-button'"
              parameters:
                - InternetGatewayDevice.DeviceInfo.HardwareVersion
                - InternetGatewayDevice.DeviceInfo.SoftwareVersion
                - InternetGatewayDevice.LANDevice.*.LANEthernetInterfaceConfig
                - InternetGatewayDevice.LANDevice.*.WLANConfiguration
                - InternetGatewayDevice.LANDevice.*.Hosts.Host
                - InternetGatewayDevice.WANDevice.*.WANConnectionDevice
                - InternetGatewayDevice.UserInterface
                - Device.DeviceInfo.X_MIKROTIK_Type
                - Device.DeviceInfo
                - Device.Ethernet.Interface
                - Device.DHCPv4.Client.1.IPAddress
                - Device.Firewall.X_MIKROTIK_NAT.Chain
                - VirtualParameters.IP-Address
                - Device.WiFi
                - Device.Hosts
                - Device.ManagementServer
                - VirtualParameters
        - label: "'Serial number'"
          parameter: DeviceID.SerialNumber
        - label: "'Product class'"
          parameter: DeviceID.ProductClass
        - label: "'OUI'"
          parameter: DeviceID.OUI
        - label: "'Manufacturer'"
          parameter: DeviceID.Manufacturer
        - label: "'ArchName'"
          parameter: Device.DeviceInfo.X_MIKROTIK_ArchName
        - label: "'Hardware version'"
          parameter: InternetGatewayDevice.DeviceInfo.HardwareVersion
        - label: "'Software version'"
          parameter: InternetGatewayDevice.DeviceInfo.SoftwareVersion
        - label: "'Identity'"
          parameter: Device.DeviceInfo.X_MIKROTIK_SystemIdentity
        - label: "'IP'"
          parameter: VirtualParameters.IP-Address
          type: "'container'"
          components:
            - type: "'parameter'"
          element:
            tag: "'a'"
            attributes:
              href: '"http://" ||
                ENCODEURICOMPONENT(VirtualParameters.IP-Address)'
              target: "'_blank'"
        - label: "'Last Reboot'"
          parameter: Virtual.RebootTime
    - element: "'div'"
      type: "'container'"
      components:
        - element: "'h3'"
          type: "'container'"
          components:
            - type: "'device-faults'"
        - element: "'div.container-full-width'"
          type: "'container'"
          components:
            - element: "'h3'"
              type: "'container'"
              components:
                - "'All parameters'"
                - type: "'all-parameters'"
    - type: "'device-actions'"
- label: "'WAN'"
  route: "'WAN'"
  components:
    - type: "'tags'"
    - type: "'ping'"
    - type: "'parameter-list'"
      parameters:
        - element: "'span.inform'"
          label: "'Last Inform'"
          parameter: DATE_STRING(Events.Inform)
          type: "'container'"
          components:
            - type: "'parameter'"
            - chart: "'online'"
              type: "'overview-dot'"
            - type: "'summon-button'"
              parameters:
                - InternetGatewayDevice.LANDevice
                - Device.WiFi
                - VirtualParameters
                - Device.PPP
        - label: "'IP'"
          parameter: VirtualParameters.IP-Address
          type: "'container'"
          components:
            - type: "'parameter'"
          element:
            tag: "'a'"
            attributes:
              href: '"http://" ||
                ENCODEURICOMPONENT(VirtualParameters.IP-Address)'
              target: "'_blank'"
    - type: "'container'"
      components:
        - label: "'PPP List'"
          parameter: Device.PPP.Interface
          type: "'parameter-table'"
          childParameters:
            - label: "'Username'"
              parameter: Username
            - label: "'Password'"
              parameter: Password
            - label: "'IP Address'"
              parameter: LocalIPAddress
            - label: "'Status'"
              parameter: ConnectionStatus
            - label: "'Enable'"
              parameter: Enable
    - element: "'div.container-full-width'"
      type: "'container'"
      components:
        - element: "'h3'"
          type: "'container'"
          components:
            - "'All parameters'"
            - type: "'all-parameters'"
    - type: "'device-actions'"
- label: "'LAN'"
  route: "'LAN'"
  components:
    - type: "'tags'"
    - type: "'ping'"
    - type: "'parameter-list'"
      parameters:
        - element: "'span.inform'"
          label: "'Last Inform'"
          parameter: DATE_STRING(Events.Inform)
          type: "'container'"
          components:
            - type: "'parameter'"
            - chart: "'online'"
              type: "'overview-dot'"
            - type: "'summon-button'"
              parameters:
                - InternetGatewayDevice.LANDevice
                - VirtualParameters.IP-Address
        - label: "'IP'"
          parameter: VirtualParameters.IP-Address
          type: "'container'"
          components:
            - type: "'parameter'"
          element:
            tag: "'a'"
            attributes:
              href: '"http://" ||
                ENCODEURICOMPONENT(VirtualParameters.IP-Address)'
              target: "'_blank'"
    - type: "'container'"
      components:
        - type: "'parameter-list'"
          parameters:
            - label: "'Enable'"
              parameter: Device.DHCPv4.Client.1.Enable
            - label: "'Status'"
              parameter: Device.DHCPv4.Client.1.Status
            - label: "'IPAddress'"
              parameter: Device.DHCPv4.Client.1.IPAddress
            - label: "'SubnetMask'"
              parameter: Device.DHCPv4.Client.1.SubnetMask
        - element: "'table'"
          type: "'container'"
          components:
            - element: "'tr'"
              type: "'container'"
              components:
                - element: "'td'"
                  type: "'container'"
                  components:
                    - label: "'Interface List'"
                      parameter: Device.Ethernet.Interface
                      type: "'parameter-table'"
                      childParameters:
                        - label: "'Status'"
                          parameter: Status
                        - label: "'Ether'"
                          parameter: X_MIKROTIK_Name
                        - label: "'MACAddress'"
                          parameter: MACAddress
                        - label: "'Enable'"
                          parameter: Enable
                - element: "'td'"
                  type: "'container'"
                  components:
                    - label: "'DHCPv4 hosts'"
                      parameter: Device.Hosts.Host
                      type: "'parameter-table'"
                      childParameters:
                        - label: "'Host name'"
                          parameter: HostName
                        - label: "'IP address'"
                          parameter: IPAddress
                        - label: "'MAC address'"
                          parameter: PhysAddress
    - type: "'device-actions'"
- label: "'WLAN'"
  route: "'WLAN'"
  components:
    - type: "'tags'"
    - type: "'ping'"
    - type: "'parameter-list'"
      parameters:
        - element: "'span.inform'"
          label: "'Last Inform'"
          parameter: DATE_STRING(Events.Inform)
          type: "'container'"
          components:
            - type: "'parameter'"
            - chart: "'online'"
              type: "'overview-dot'"
            - type: "'summon-button'"
              parameters:
                - InternetGatewayDevice.LANDevice.*.WLANConfiguration
                - InternetGatewayDevice.LANDevice.*.Hosts.Host
                - Device.WiFi.Radio
                - Device.WiFi.SSID
                - Device.DeviceInfo.ProductClass
        - label: "'Serial number'"
          parameter: DeviceID.SerialNumber
        - label: "'Product class'"
          parameter: Device.DeviceInfo.ProductClass
        - label: "'ArchName'"
          parameter: Device.DeviceInfo.X_MIKROTIK_ArchName
    - element: "'table'"
      type: "'container'"
      components:
        - element: "'tr'"
          type: "'container'"
          components:
            - element: "'td'"
              type: "'container'"
              components:
                - type: "'container'" 
                  components:
                    - label: "'Radio'"
                      parameter: Device.WiFi.Radio
                      type: "'parameter-table'"
                      childParameters:
                        - label: "'BAND'"
                          parameter: OperatingFrequencyBand
                        - label: "'Channel'"
                          parameter: Channel
                        - label: "'Status'"
                          parameter: Status
        - element: "'tr'"
          type: "'container'"
          components:
            - label: "'List WiFi'"
              parameter: Device.WiFi.SSID
              type: "'parameter-table'"
              childParameters:
                - label: "'SSID'"
                  parameter: SSID
                - label: "'BSSID'"
                  parameter: BSSID
                - label: "'Enable'"
                  parameter: Enable
                - label: "'Status'"
                  parameter: Status
            - element: "'td'"
              type: "'container'"
              components:
                - label: "'WiFi Clients SSID1'"
                  parameter: Device.WiFi.AccessPoint
                  type: "'parameter-table'"
                  childParameters:
                    - label: "'Pengguna'"
                      parameter: AccessPointNumberOfEntries
    - type: "'container'"
      components:
        - label: "'Security'"
          parameter: VirtualParameters
          type: "'parameter-table'"
          childParameters:
            - label: "'WANStatus'"
              parameter: WANStatus
            - label: "'SSID1'"
              parameter: SSID1
            - label: "'Password1'"
              parameter: WiFi-Password1
            - label: "'Password2'"
              parameter: WiFi-Password2
    - type: "'device-actions'"
- label: "'TR-069'"
  route: "'TR-069'"
  components:
    - type: "'tags'"
    - type: "'ping'"
    - type: "'parameter-list'"
      parameters:
        - label: "'Last Inform'"
          parameter: DATE_STRING(Events.Inform)
        - label: "'IP'"
          parameter: VirtualParameters.IP-Address
          type: "'container'"
          components:
            - type: "'parameter'"
          element:
            tag: "'a'"
            attributes:
              href: '"http://" ||
                ENCODEURICOMPONENT(VirtualParameters.IP-Address)'
              target: "'_blank'"
    - type: "'container'"
      components:
        - type: "'parameter-list'"
          parameters:
            - label: "'Enable ACS Management :'"
              parameter: Device.ManagementServer.PeriodicInformEnable
            - label: "'ACS URL :'"
              parameter: Device.ManagementServer.URL
            - label: "'Connection Request Username :'"
              parameter: Device.ManagementServer.ConnectionRequestUsername
            - label: "'Connection Request Password :'"
              parameter: Device.ManagementServer.ConnectionRequestPassword
        - element: "'h3'"
          type: "'container'"
          components:
            - "'All parameters'"
            - type: "'all-parameters'"
    - type: "'device-actions'"
