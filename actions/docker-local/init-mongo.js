db = db.getSiblingDB("passnet_classroom_db")
db.test.insert({"key":"test"})
db.createUser(
        {
            user: "passnet_classroom_app",
            pwd: "tungduong98",
            roles: [
                {
                    role: "readWrite",
                    db: "passnet_classroom_db"
                }
            ]
        }
);