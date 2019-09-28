import Foundation
import SwiftSocket

//Server socket example (echo server)
func echoService(client: TCPClient) {
    print("Newclient from:\(client.address)[\(client.port)]")
    let d = client.read(1024*10)
    client.send(data: d!)
    client.close()
}

func testServer() {
    let server = TCPServer(address: "127.0.0.1", port: 8080)

    switch server.listen() {
    case .success:
        while true {
            if let client = server.accept() {
                echoService(client: client)
            } else {
                print("accept error")
            }
        }
    case .failure(let error):
        print(error)
    }
}

testServer()