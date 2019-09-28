import Foundation
import SwiftSocket

// Client socket example
func textClient(){
    // Create client socket
    let client = TCPClient(address: "127.0.0.1", port: 8080)

    // Connect with timeout
    switch client.connect(timeout: 1) {
    case .success:
        switch client.send(string: "GET / HTTP/1.0\n\n" ) {
        case .success:
            // Read data
            guard let data = client.read(1024 * 10) else {
                return
            }
            
            if let response = String(bytes: data, encoding: .utf8) {
                print(response)
            }
        case .failure(let error):
            print(error)
        }
    case .failure(let error):
        print(error)
    }
}

textClient()