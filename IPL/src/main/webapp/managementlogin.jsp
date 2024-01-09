<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %> -->


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Management Login</title>
  <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&family=Merienda:wght@800&family=Noto+Serif:ital@1&family=Pacifico&family=Roboto&display=swap" rel="stylesheet">



  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Hind Siliguri', sans-serif;
    }

    :root {
      --primary-color: #c6c3c3;
      --second-color: #ffffff;
      --black-color: #000000;
    }

    body {
      background-image: url("https://drive.google.com/uc?export=view&id=1uCohtd5e8ZjrZrhykzct1o1DAE9JNVfS");
      background-position: center;
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
    }

    .msg {
      height: fit-content;
      width: 28%;
      font-size: 24px;
      color: white;
       background-color:#0d222c; 
      position: relative;
      top: 80px;
      margin: 0px auto;
      border-radius: 10px;
      border: 2px solid #c6c3c3;
      text-align: center;
      
    }

    a {
      text-decoration: none;
      color: var(--second-color);
    }

    a:hover {
      text-decoration: underline;
    }

    .wrapper {
      width: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background-color: rgba(0, 0, 0, 0.2);
    }

    .login_box {
      position: relative;
      width: 450px;
      backdrop-filter: blur(25px);
      border: 2px solid var(--primary-color);
      border-radius: 15px;
      padding: 7.5em 2.5em 4em 2.5em;
      color: var(--second-color);
      box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.2);
    }

    .login-header {
      position: absolute;
      top: 0;
      left: 50%;
      transform: translateX(-50%);
      display: flex;
      align-items: center;
      justify-content: center;
      background-color: var(--primary-color);
      width: 140px;
      height: 70px;
      border-radius: 0 0 20px 20px;
    }

    .login-header span {
      font-size: 30px;
      color: var(--black-color);
    }

    .login-header::before {
      content: "";
      position: absolute;
      top: 0;
      left: -30px;
      width: 30px;
      height: 30px;
      border-top-right-radius: 50%;
      background: transparent;
      box-shadow: 15px 0 0 0 var(--primary-color);
    }

    .login-header::after {
      content: "";
      position: absolute;
      top: 0;
      right: -30px;
      width: 30px;
      height: 30px;
      border-top-left-radius: 50%;
      background: transparent;
      box-shadow: -15px 0 0 0 var(--primary-color);
      /* Removed space before --primary-color */
    }

    .input_box {
      position: relative;
      display: flex;
      flex-direction: column;
      margin: 20px 0;
    }

    .input-field {
      width: 100%;
      height: 55px;
      font-size: 16px;
      background: transparent;
      color: var(--second-color);
      padding-inline: 20px 50px;
      border: 2px solid var(--primary-color);
      border-radius: 30px;
      outline: none;
    }

    #user {
      margin-bottom: 10px;
    }

    .label {
      position: absolute;
      top: 15px;
      left: 20px;
      transition: 0.2s;
    }

    .input-field:focus~.label,
    .input-field:valid .label,
    .input-field:focus+.label,
    .input-field:not(:placeholder-shown)+.label {
      position: absolute;
      top: -10px;
      left: 20px;
      font-size: 14px;
      background-color: var(--primary-color);
      border-radius: 30px;
      color: var(--black-color);
      padding: 0 10px;
    }

    /* Closed the missing brace */

    .icon {
      position: absolute;
      top: 18px;
      right: 25px;
      font-size: 20px;
    }

    .remember-forgot {
      display: flex;
      justify-content: space-between;
      font-size: 15px;
    }

    .input-submit {
      width: 100%;
      height: 50px;
      background: #ececec;
      font-size: 16px;
      font-weight: 500;
      border: none;
      border-radius: 30px;
      cursor: pointer;
      transition: 0.3s;
    }

    .input-submit:hover {
      background: var(--second-color);
    }

    .register {
      text-align: center;
    }

    .register a {
      font-weight: 500;
    }

    @media only screen and (max-width: 564px) {
      .wrapper {
        padding: 20px;
      }

      .login_box {
        padding: 7.5em 1.5em 4em 1.5em;
      }
    }
  </style>

</head>

<body>
  <!-- partial:index.partial.html -->

  <div class="msg">${msg}</div>

  <div class="wrapper">
    <div class="login_box">
      <div class="login-header">
        <span>Login</span>
      </div>

      <form action="managementlogin">

        <div class="input_box">
          <input type="text" id="user" class="input-field" name="username" required>
          <label for="user" class="label">Username</label>
          <i class="bx bx-user icon"></i>
        </div>

        <div class="input_box">
          <input type="password" id="pass" class="input-field" name="password" required>
          <label for="pass" class="label">Password</label>
          <i class="bx bx-lock-alt icon"></i>
        </div>

        <div class="remember-forgot">
          <div class="remember-me">
            <input type="checkbox" id="remember">
            <label for="remember">Remember me</label>
          </div>

          <div class="forgot">
            <a href="#">Forgot password?</a>
          </div>
        </div>

        <div class="input_box">
          <input type="submit" class="input-submit" value="Login">
        </div>

        <div class="register">
          <span>Don't have an account? <a href="managementsignup.jsp">Register</a></span>
        </div>
    </div>
  </div>
  </form>


</body>

</html>