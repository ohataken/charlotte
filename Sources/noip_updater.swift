class NoIPUpdater {
    
    let user: String
    let pass: String
    let host: String
    
    init(user: String, pass: String, host: String) {
        self.user = user
        self.pass = pass
        self.host = host
    }
    
    func getURLString() -> String {
        return "https://\(self.user):\(self.pass)@dynupdate.no-ip.com/nic/update?hostname=\(self.host)"
    }

}
