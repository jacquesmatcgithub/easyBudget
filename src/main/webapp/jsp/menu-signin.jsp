<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="sidebar">
    <h2>Actions</h2>
    <div class="box">
        <ul>
            <form action="validateSignIn" method="GET">
                Username:<br />
                <input type="text" name="userName" size="10" maxlength="10" autofocus><br /><br />
                Password: <input type="text" name="password" size="10" maxlength="10" <br /> <br/>
                <input type="submit" name="" value="Go! :-)" />
            </form>
        </ul>
    </div>
</div>
