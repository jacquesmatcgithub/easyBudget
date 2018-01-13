<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<c:set var="pageTitle" value="easyBudget" scope="request" />

<html xmlns="http://www.w3.org/1999/xhtml">

<c:import url="jsp/head-tag.jsp" />

<body>
<div id="wrap">
  <c:import url="jsp/header.jsp" />

  <c:import url="jsp/menu-main.jsp" />

  <c:import url="content/content-home.jsp" />

  <c:import url="jsp/footer.jsp" />
</div>
</body>
</html>