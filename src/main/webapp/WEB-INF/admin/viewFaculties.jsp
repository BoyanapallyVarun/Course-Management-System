<%@ page language="java" contentType="text/html; charset=IsO-8859-1"
    pageEncoding="IsO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="header.jsp"></jsp:include>

<div>
<jsp:include page="navigation.jsp"></jsp:include>
</div>


<div class="container-fluid">
 
  <table class="table">
    <thead class="thead-light">
      <tr>
        <th>Id</th>
        <th>Password</th>
        <th>Designation</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Address</th>
        <th>Dob</th>
        <th>Branch</th>
        <th>Update</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${listOfFacultys}" var="faculty">
      <tr>
       	<td>${faculty.fid}</td>
        <td>${faculty.fpw}</td>
        <td>${faculty.fdes}</td>
        <td>${faculty.fname}</td>
        <td>${faculty.fgender}</td>
        <td>${faculty.femail}</td>
        <td>${faculty.fphone}</td>    
        <td>${faculty.faddress}</td>
        <td>${faculty.fdob}</td>
        <td>${faculty.fbranch}</td>
        <td><a href="${pageContext.request.contextPath}/admin/faculty/update?fid=${faculty.fid}"><button type="button" class="btn btn-outline-warning">Update</button></a></td>
        <td><a href="${pageContext.request.contextPath}/admin/faculty/delete?fid=${faculty.fid}"><button type="button" class="btn btn-outline-danger">Delete</button></a></td>
      </tr>
     </c:forEach>
    </tbody>
  </table>
</div>


<div style="padding-top: 510px;" class="panel-footer">
<jsp:include page="footer.jsp"></jsp:include>
</div>