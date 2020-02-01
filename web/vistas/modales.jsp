<!-- Modal Delete Usuario -->
<div class="modal fade" id="modaldeleteusuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" >
                <Center><h4 class="modal-title" id="myModalLabel"><span style="Color:#D92550;" class="fas fa-exclamation-circle" aria-hidden="true"></span> Elimina Usuario</h4></Center>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <b>¿Esta seguro de eliminar usuario?</b>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-danger" onclick="javascript:IrAServletUsandoPost('ServletUsuariosDel');" id="btnEliminar" name="btnEliminar" >Eliminar</button>
            </div>
            <div hidden class="form-group input-group">
                <input style="width:100px;" class="form-control" id="nombreusuariomodal" name="nombreusuariomodal" >    
                <input style="width:100px;" class="form-control" id="idusuariomodal" name="idusuariomodal" >
            </div> 
        </div>
    </div>
</div>
<!-- Modal Delete Cliente -->
<div class="modal fade" id="modaldeletecliente" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" >
                <Center><h4 class="modal-title" id="myModalLabel"><span style="Color:#D92550;" class="fas fa-exclamation-circle" aria-hidden="true"></span> Eliminar Cliente</h4></Center>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <b>¿Esta seguro de eliminar este cliente?</b>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-danger" onclick="javascript:IrAServletUsandoPost('ServletClienteDel');" id="btnEliminar" name="btnEliminar" >Eliminar</button>
            </div>
            <div hidden class="form-group input-group">
                <input style="width:100px;" class="form-control" id="nombreclientemodal" name="nombreclientemodal" >    
                <input style="width:100px;" class="form-control" id="idclientemodal" name="idclientemodal" >
            </div> 
        </div>
    </div>
</div>