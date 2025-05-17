<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signupp.aspx.cs" Inherits="YourProject.Signup" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup - VestaSim</title>
    <link rel="stylesheet" href="Signupp.css" />
    <!-- <link rel="stylesheet" href="hom.css" /> -->

    <style>
        /* Reuse all styles from Login.aspx */
        @import url('https://fonts.googleapis.com/css?family=Montserrat:500');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Montserrat", sans-serif;
        }

        body {
            background-color: #0d1321;
            overflow-x: hidden;
        }
        .blur-bg-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            backdrop-filter: blur(10px);
            transition: 0.1s ease;
        }

        .form-popup {
            position: fixed;
            top: 50%;
            left: 50%;
            max-width: 720px;
            width: 100%;
            background: #748cab;
            transform: translate(-50%, -50%);
            box-shadow: 1px 1px 5px #0d1321;
            border-radius: 5px;
        }

        .form-popup .close-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            color: #0d1321;
            cursor: pointer;
        }

        .form-popup .form-box {
            display: flex;
        }

        .form-box .form-details {
            max-width: 330px;
            width: 100%;
            color: #f0ebd8;
            display: flex;
            padding: 0 20px;
            text-align: center;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-shadow: 5px 5px 10px black;
            background-image: url('IMG/bg-housse.png');
            background-size: cover;
            background-position: center;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
        }

        .form-box .form-content {
            width: 100%;
            padding: 35px;
        }

        form .input-field {
            height: 50px;
            width: 100%;
            margin-top: 20px;
            position: relative;
        }

        form .input-field input {
            height: 100%;
            width: 100%;
            padding: 0 15px;
            font-size: 0.95rem;
            border: none;
            border-radius: 20px;
            box-shadow: 1px 1px 5px #0d1321;
        }

        .form-box h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .form-box a {
            color: darkblue;
            text-decoration: none;
        }

        .form-box a:hover {
            text-decoration: underline;
        }

        .bottom-link {
            color: #f0ebd8;
        }

        form button, .btn {
            width: 100%;
            outline: none;
            border: none;
            font-size: 1rem;
            font-weight: 600;
            padding: 14px 0;
            border-radius: 20px;
            margin: 25px 0;
            color: #F0EBD8;
            cursor: pointer;
            background-color: #1d2d44;
            transition: 0.2s ease;
            box-shadow: 1px 1px 5px #0d1321;
        }

        form button:hover, .btn:hover {
            background-color: #3E5C76;
        }


    </style>

    <script>
        function closeLoginPopup() {
            document.querySelector('.form-popup').style.display = 'none';
            window.location.href = 'home.aspx';
        }

        function openModal() {
            document.getElementById('modalOverlay').style.display = 'block';
            document.getElementById('termsModal').style.display = 'block';
        }

        function closeModal() {
            document.getElementById('modalOverlay').style.display = 'none';
            document.getElementById('termsModal').style.display = 'none';
        }
    </script>

</head>
<body class="signup-page">
    <div class="blur-bg-overlay"></div>

    <!-- Signup Form -->
    <div class="form-popup">
       <button class="close-btn" onclick="closeLoginPopup()">&#10006</button>
            <div class="form-box login">

                <div class="form-details">
                    <p>Create your personal account</p>
                </div>
                
                <div class="form-content">
                
                    <h2>SIGN UP</h2>
                    
                    <form id="signupForm" runat="server">
                        <div class="input-field">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-control" placeholder="Enter your email"></asp:TextBox>
                        </div>
                        <div class="input-field">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-control" TextMode="Password" placeholder="Create password"></asp:TextBox>
                        </div>
                        <!-- Link -->
                        <div class="policy-text">
                            <asp:CheckBox ID="chkPolicy" runat="server" />
                            <label for="chkPolicy">I agree to the 
                                <a href="#" onclick="openModal()">Terms & Conditions</a>
                            </label>
                        </div>

                        <!-- Overlay -->
                        <div id="modalOverlay" onclick="closeModal()"></div>

                        <!-- Modal -->
                        <div id="termsModal">
                            <div class="terms-header">
                              <h2>Terms and Conditions</h2>
                            </div>
                            <div class="center-text">
                              <h4>Welcome to our property website!</h4>
                              <p>By signing up, logging in, or using our services, you agree to the following terms:</p>
                            </div>
                            <br />
                            <hr class="violet-line" />
                            <h3> • User Accounts</h3>
                            <p>You must register using accurate information.
                                Keep your login details private and secure.
                                You are responsible for all activity under your account.</p>
                            <br />
                            <h3> • Property Listings</h3>
                            <p>Property details such as price, location, and status are posted for information purposes.
                                We aim to keep listings accurate, but availability may change without notice.</p>
                            <br />
                            <h3> • Transactions</h3>
                            <p>All transactions (e.g., buying a property) are recorded for reference.
                                We do not handle payments directly. All payments are made between buyer and seller.
                                Once a property is marked as "Sold", it may no longer be available.</p>
                            <br />
                            <h3>• Images</h3>
                            <p>Property images are uploaded to help you view the property better.
                                Images are for reference only and may not fully reflect the actual property.</p>
                            <br />
                            <h3>• User Conduct</h3>
                            <p>Do not post or request fake information.
                                Respect others and avoid abusive behavior.
                                Misuse of the site may result in account suspension.</p>
                            <br />
                            <h3>• Data and Privacy</h3>
                            <p>We store your personal information (like name and password) securely.
                                Your data will not be shared with third parties without consent.</p>
                            <br />
                            <h3>• Modifications</h3>
                            <p>These terms may change at any time. Please check regularly for updates.
                                By using this website, you confirm that you understand and accept these terms.</p>
                            <button onclick="closeModal()">Close</button>
                        </div>

                        <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="btn" OnClick="btnSignup_Click" />
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
                    </form>
                    <div class="bottom-link">Already have an account? <a href="Loginn.aspx">Login</a></div>
                </div>
            </div>
        </div>
</body>
</html>
