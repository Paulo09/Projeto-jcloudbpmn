class UsuarioController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ usuarioList: Usuario.list( params ) ]
    }

    def show = {
        def usuario = Usuario.get( params.id )

        if(!usuario) {
            flash.message = "Usuario not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ usuario : usuario ] }
    }

    def delete = {
        def usuario = Usuario.get( params.id )
        if(usuario) {
            usuario.delete()
            flash.message = "Usuario ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "Usuario not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def usuario = Usuario.get( params.id )

        if(!usuario) {
            flash.message = "Usuario not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ usuario : usuario ]
        }
    }

    def update = {
        def usuario = Usuario.get( params.id )
        if(usuario) {
            usuario.properties = params
            if(!usuario.hasErrors() && usuario.save()) {
                flash.message = "Usuario ${params.id} updated"
                redirect(action:show,id:usuario.id)
            }
            else {
                render(view:'edit',model:[usuario:usuario])
            }
        }
        else {
            flash.message = "Usuario not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def usuario = new Usuario()
        usuario.properties = params
        return ['usuario':usuario]
    }

    def save = {
        def usuario = new Usuario(params)
        if(!usuario.hasErrors() && usuario.save()) {
            flash.message = "Usuario ${usuario.id} created"
            redirect(action:show,id:usuario.id)
        }
        else {
            render(view:'create',model:[usuario:usuario])
        }
    }
}
