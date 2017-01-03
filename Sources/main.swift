import Foundation
import Kitura

print("app started")

let router: Router = Router()

router.get("/") { _, response, next in
    try response.send("Hello, from Kitura!").end()
}

Kitura.addHTTPServer(onPort: 8080, with: router)
print("server added at 8080")
Kitura.run()
