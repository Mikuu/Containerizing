db.createUser(
        {
            user: "wm-user",
            pwd: "wm-password",
            roles: [
                {
                    role: "readWrite",
                    db: "weasy-mock"
                }
            ]
        }
);