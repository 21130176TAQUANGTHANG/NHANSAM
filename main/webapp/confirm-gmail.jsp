<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Xác Nhận Gmail</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Xác Nhận Gmail</h2>
    <p>Một email xác nhận đã được gửi đến địa chỉ email của bạn. Vui lòng kiểm tra hộp thư đến và nhấp vào liên kết xác nhận.</p>
    <script>
        // Function to extract token from URL
        function getTokenFromURL() {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get("token");
        }

        // Function to send confirmation request to the server
        function confirmEmail() {
            const confirmationToken = getTokenFromURL();

            // Replace the following URL with the actual URL of your server-side confirmation endpoint
            const confirmationEndpoint = "https://your-server.com/confirm-email";

            fetch(confirmationEndpoint, {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({ token: confirmationToken }),
            })
                .then(response => {
                    if (!response.ok) {
                        throw new Error("Confirmation failed");
                    }
                    // If confirmation is successful, redirect to reset-password.html
                    window.location.href = "reset-password.html";
                })
                .catch(error => {
                    console.error("Confirmation error:", error);
                    // Handle error, show user a message, etc.
                });
        }

        // Call the function to confirm email
        confirmEmail();
    </script>
</div>

</body>
</html>