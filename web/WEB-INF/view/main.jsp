<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section class="content">

    <div class="container">
        <h1>All Topics</h1>
        <div class="row">
            <div class="col-lg-8 col-md-8">
                <c:forEach items="${requestScope.blogList}" var="blog">
                    <div class="post">
                        <div class="wrap-ut pull-left">
                            <div class="userinfo pull-left">
                                <div class="avatar">
                                    <img src="${pageContext.request.contextPath}/resources/images/avatar.jpg" alt=""/>
                                </div>
                            </div>
                            <div class="posttext pull-left">
                                <h2><a href="/ts?action=getTopic&topic=${blog.id}">${blog.title}</a></h2>
                                <p>${blog.description}</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="postinfo pull-left">
                            <div class="comments">
                                <div class="commentbg">
                                        ${blog.comments.size()}
                                    <div class="mark"></div>
                                </div>
                            </div>
                            <div class="views"><i class="fa fa-eye"></i>${blog.viewCount}</div>
                            <div class="time"><i class="fa fa-clock-o"></i> ${blog.timeDiff}</div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </c:forEach>
                <center>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <c:set var = "page" value = "${1}"/>
                            <c:forEach begin="0" end="${count}"  var="pageCount">
                                <li class="page-item"><a class="page-link" href="/ts?action=olderTopics&page=${pageCount+1}"><c:out value="${pageCount+1}"/></a></li>
                            </c:forEach>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>
                </center>
            </div>
            <div class="col-lg-4 col-md-4">

                <!-- -->
                <div class="sidebarblock">
                    <h3 class="bg-primary">Popular Topics</h3>
                    <div class="divline"></div>
                    <div class="blocktxt">
                        <ul class="cats">
                            <li><a href="#">Trading for Money <span class="badge pull-right">20</span></a></li>
                            <li><a href="#">Vault Keys Giveway <span class="badge pull-right">10</span></a></li>
                            <li><a href="#">Misc Guns Locations <span class="badge pull-right">50</span></a></li>
                            <li><a href="#">Looking for Players <span class="badge pull-right">36</span></a></li>
                            <li><a href="#">Stupid Bugs &amp; Solves <span class="badge pull-right">41</span></a></li>
                            <li><a href="#">Video &amp; Audio Drivers <span class="badge pull-right">11</span></a></li>
                            <li><a href="#">2K Official Forums <span class="badge pull-right">5</span></a></li>
                        </ul>
                    </div>
                </div>

                <!-- -->
                <c:if test="${sessionScope.user ne null}">
                    <div class="sidebarblock">
                        <h3 class="bg-primary">My Active Threads</h3>
                        <div class="divline"></div>
                        <div class="blocktxt">
                            <a href="#">This Dock Turns Your iPhone Into a Bedside Lamp</a>
                        </div>
                        <div class="divline"></div>
                        <div class="blocktxt">
                            <a href="#">Who Wins in the Battle for Power on the Internet?</a>
                        </div>
                        <div class="divline"></div>
                        <div class="blocktxt">
                            <a href="#">Sony QX10: A Funky, Overpriced Lens Camera for Your Smartphone</a>
                        </div>
                        <div class="divline"></div>
                        <div class="blocktxt">
                            <a href="#">FedEx Simplifies Shipping for Small Businesses</a>
                        </div>
                        <div class="divline"></div>
                        <div class="blocktxt">
                            <a href="#">Loud and Brave: Saudi Women Set to Protest Driving Ban</a>
                        </div>
                    </div>
                </c:if>

            </div>
        </div>
    </div>

    <br><br>

</section>
