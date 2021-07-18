<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/07/2021
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="main-body">
    <img src="./images/ship.png" id="shipper" alt="">
    <div class="container" id="multiformcontainer">
        <header>Sign up Form</header>
        <div class="progress-bar">
            <div class="step">
                <p>Name</p>
                <div class="bullet">
                    <span>1</span>
                </div>
                <div class="check"><i class="fa fa-check" aria-hidden="true"></i></div>
            </div>
            <div class="step">
                <p>Contact</p>
                <div class="bullet">
                    <span>2</span>
                </div>
                <div class="check"><i class="fa fa-check" aria-hidden="true"></i></div>
            </div>
            <div class="step">
                <p>Password</p>
                <div class="bullet">
                    <span>3</span>
                </div>
                <div class="check"><i class="fa fa-check" aria-hidden="true"></i></div>
            </div>
            <div class="step">
                <p>Submit</p>
                <div class="bullet">
                    <span>4</span>
                </div>
                <div class="check"><i class="fa fa-check" aria-hidden="true"></i></div>
            </div>
        </div>

        <div class="form-outer">
            <form action="register" method="post">
                <div class="page slide-page">
                    <div class="title">Basic Info:</div>
                    <div class="field">
                        <div class="label">Full Name</div>
                        <input type="text" name="fullname" title="You must fill this field" required>
                    </div>
                    <div class="field">
                        <div class="label">Username</div>
                        <input type="text" name="user" title="You must fill this field" required>
                    </div>
                    <div class="field">
                        <button class="firstNext next">Next</button>
                    </div>
                </div>

                <div class="page">
                    <div class="title">Contact Info:</div>
                    <div class="field">
                        <div class="label">Email Address</div>
                        <input type="text" name="mail" title="You must fill this field" required>
                    </div>
                    <div class="field">
                        <div class="label">Phone number</div>
                        <input type="text" name="phone" title="You must fill this field" required>
                    </div>
                    <div class="field btns">
                        <button class="prev-1 prev">Previous</button>
                        <button class="next-1 next">Next</button>
                    </div>
                </div>

                <div class="page">
                    <div class="title">Date of Birth:</div>
                    <div class="field">
                        <div class="label">Password</div>
                        <input type="password" name="pass" title="You must fill this field" required>
                    </div>
                    <div class="field">
                        <div class="label">Re-Enter ssword</div>
                        <input type="password" name="repass" title="You must fill this field" required>
                    </div>
                    <div class="field btns">
                        <button class="prev-2 prev">Previous</button>
                        <button class="next-2 next">Next</button>
                    </div>
                </div>

                <div class="page">
                    <div class="title">Login Details:</div>
                    <p style="text-align: center; font-weight: bold; margin-top: 20px ;">
                        Press Submit Button to Register account your account. Hope you have the best experience with our
                        website!!
                    </p>
                    <div class="field btns">
                        <button class="prev-3 prev">Previous</button>
                        <button class="submit">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <img src="./images/reveive.png" id="receiver" alt="">
    <script src="./js/form.js"></script>
</div>
</div>