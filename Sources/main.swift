import Foundation
import Kitura

let router: Router = Router()

router.get("/") { _, response, next in
    try response.send("Hello, from Kitura!").end()
}

Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()
