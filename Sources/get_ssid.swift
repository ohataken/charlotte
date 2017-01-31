import CoreWLAN

func getSSID() -> String {
    return CWWiFiClient()?.interface(withName: nil)?.ssid() ?? ""
}
