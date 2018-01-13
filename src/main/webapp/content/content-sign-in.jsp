<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="content" style="padding-left:10px;">
    <h2>Sign In</h2>
    <br />
    <form action="ValidateSignIn" method="GET">
        <table>
            <tr>
                <td>Username: <input type="text" name="userName" autofocus><br /> </td>
                <td>Password: <input type="text" name="password" <br /> </td>
            </tr>
            <tr><td><input type="submit" name="" value="SignIn" /> </td></tr>
        </table>
    </form>
</div>