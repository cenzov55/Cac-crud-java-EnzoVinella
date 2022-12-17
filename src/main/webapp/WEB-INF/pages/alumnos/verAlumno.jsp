
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Ver alumno" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />


<div class="container">
    <div class="row justify-content-center">
        <div class="col-6">
        <div class="card">
            <jsp:include page="partes/dataCardAlumno.jsp">
                <jsp:param name="fotoAlumno" value="${alumno.foto}" />
                <jsp:param name="nombreCompletoAlumno" value="${alumno.nombreCompleto}" />
            </jsp:include>
            <div class="card-footer">
                <div class="row justify-content-center">

                    <div class="col-6">
                        <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumno.id}" class="btn bg-warning w-100"><i class="bi bi-pencil"></i></a>
                    </div>
                    <div class="col-6">
                        <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumno.id}" class="btn bg-danger text-light w-100"><i class="bi bi-trash3"></i></a>
                    </div>
                </div>
            </div>
        </div>
       </div>
    </div>



<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>
