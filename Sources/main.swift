import Foundation
import Alamofire

let args = ProcessInfo.processInfo.arguments
let user = args[1]
let pass = args[2]
let host = args[3]
let ssid = args[4]

if ssid != getSSID() {
    exit(0)
}

let updater = NoIPUpdater(user: user, pass: pass, host: host)

Alamofire.request(updater.getURLString()).response { (response) in
    print(response.response!)
    exit(0)
}

RunLoop.main.run()
