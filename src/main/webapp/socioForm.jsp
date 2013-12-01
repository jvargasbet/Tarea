<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script type="text/javascript" src="public/app/bootstrap-select.js"></script>  
        <script src="public/bootstrap/js/bootstrap.min.js"></script>

      
        <script type="text/javascript">
            $(window).on('load', function() {

                $('.selectpicker').selectpicker({
                    'selectedText': 'cat'
                });

                // $('.selectpicker').selectpicker('hide');
            });
        </script>
        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <%@include file="/public/menuGeneral.jsp" %>

        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="/public/menuAdm.jsp" %>

                <div class="span9">
                    <div class="row">
                        <h1> Nuevo Socio </h1>
                    </div>


                    <form action="<%=contextPath%>/adm/socio/save" method="POST" class="form-horizontal">

                        <input type="hidden" value="${socio.id}" name="id"> 

                        <div class="control-group">
                            <label class="control-label">Nombres</label>
                            <div class="controls">
                                <input type="text" name="nombres" value="${socio.nombres}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Apellido Paterno</label>
                            <div class="controls">
                                <input type="text" name="paterno" value="${socio.paterno}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Apellido Materno</label>
                            <div class="controls">
                                <input type="text" name="materno" value="${socio.materno}">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Email</label>
                            <div class="controls">
                                <input type="text" name="email" value="${socio.email}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Celular</label>
                            <div class="controls">
                                <input type="text" name="celular" value="${socio.celular}">
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Direcci�n</label>
                            <div class="controls">
                                <input type="text" name="direccion" value="${socio.direccion}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Sexo</label>
                            <div class="controls">
                                <select class="selectpicker"  >

                                    <option  data-content="<span class='label label-success'>MASCULINO</span>" value="${socio.sexo}">M</option>
                                    <option data-content="<span class='label label-success'>FEMENINO</span>" value="${socio.sexo}">F</option>
                                     
                                </select>
                            </div>
                        </div>
                        <input type="hidden" name="is_private" value="0" />

                        <div class="control-group">
                            <label class="control-label">
                                <div class="control-group">
                                    <div class="btn-group" data-toggle="buttons">

                                        <label class="btn btn-primary">
                                            <input type="checkbox" checked="1" > Activo
                                        </label>


                                    </div>
                                </div>

                            </label>

                        </div> 
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-primary">Guardar</button>
                                <a class="btn" href="<%=contextPath%>/adm/socio">Cancelar</a>

                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </body>
</html>
