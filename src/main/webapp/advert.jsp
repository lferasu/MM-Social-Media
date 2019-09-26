<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="advert">
    <h1 class="addsHeading">MUM Ads</h1>
    <div id="mumads">
        <c:forEach var="ads" items="${adverts}" >
            <h4><c:out value="${ads.text}" /></h4>
        </c:forEach>

    </div>
</div>
