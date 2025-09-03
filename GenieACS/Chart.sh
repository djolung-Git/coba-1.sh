online:
  label: "'Status ONT'"
  slices:
    1_onlineNow:
      color: "'#31a354'"
      filter: Events.Inform > NOW() - 5 * 60 * 1000
      label: "'Online'"
    2_offline:
      color: "'#ff3333'"
      filter: Events.Inform > (NOW() - 5 * 60 * 1000) - (24 * 60 * 60 * 1000) AND
        Events.Inform < (NOW() - 5 * 60 * 1000) OR Events.Inform < (NOW() - 5 *
        60 * 1000) - (24 * 60 * 60 * 1000)
      label: "'Offline'"
    3_reboot:
      color: "'#808080'"
      filter: Device.DeviceInfo.UpTime < 600
      label: "'Reboot'"
merek:
  label: "'Merek ONT'"
  slices:
    1_huawei:
      color: "'#ff3333'"
      filter: DeviceID.Manufacturer = "Huawei Technologies Co., Ltd"
      label: "'Huawei'"
    2_zte:
      color: "'#00ffff'"
      filter: DeviceID.Manufacturer = "ZTE"
      label: "'ZTE'"
    3_mikrotik:
      color: "'#000000'"
      filter: DeviceID.Manufacturer = "MikroTik"
      label: "'MikroTik'"
    4_ciot:
      color: "'#1908FC'"
      filter: DeviceID.Manufacturer = "CIOT"
      label: "'CIOT'"
    5_cmdc:
      color: "'#539ece'"
      filter: DeviceID.Manufacturer = "Technologies Co., Ltd"
      label: "'KW Huawei'"
archname:
  label: "'ArchName ONT'"
  slices:
    1_x86:
      color: "'#154D71'"
      filter: Device.DeviceInfo.X_MIKROTIK_ArchName = "x86"
      label: "'x86'"
    2_ARM:
      color: "'#67C090'"
      filter: Device.DeviceInfo.X_MIKROTIK_ArchName = "ARM"
      label: "'ARM'"
    3_ARM64 / AMPERE:
      color: "'#FF9A00'"
      filter: Device.DeviceInfo.X_MIKROTIK_ArchName = "ARM64 / AMPEREARM"
      label: "'ARM64 / AMPEREARM'"
    4_MIPSBE:
      color: "'#0D1164'"
      filter: Device.DeviceInfo.X_MIKROTIK_ArchName = "MIPSBE"
      label: "'MIPSBE'"
    5_MMIPS:
      color: "'#468A9A'"
      filter: Device.DeviceInfo.X_MIKROTIK_ArchName = "MMIPS"
      label: "'MMIPS'"
    6_SMIPS:
      color: "'#253900'"
      filter: Device.DeviceInfo.X_MIKROTIK_ArchName = "SMIPS"
      label: "'SMIPS'"
