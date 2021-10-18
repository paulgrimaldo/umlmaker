///cuando se conecte con el socket lo registro en el mismo room del proyecto donde ha ingresado.
var socket = io();
var edit; /// variable con la que defino si puedo editar o no en el proyecto
var username = user.nombre;
console.log('usuario ' + username);

socket.on('connect', function () {
    socket.emit('registerRoom', proyecto);
});
//el servidor me emite que he sido registrado y actualizo mis datos

socket.on('registered', function (data) {

    if (data.edit != null) {
        edit = data.edit;
    } else {
        edit = true;
    }
    var parser = new DOMParser();
    //console.log(proyecto.content);
    var xmlDoc = parser.parseFromString(proyecto.content, 'text/xml');
    d.fromXML(xmlDoc);
    ///obtengo la bandera del proyecto para saber si puedo editar o no
    //y cargo el xml del proyecto
    actualizarEdit();
});
function actualizarEdit() {
    if (edit) {//puedo editar
        $("#btn_edit").prop("disabled", false);
    } else {
        $("#btn_edit").prop("disabled", true);
    }
};

$('#btn_edit').click(function () {

    if (edit) {

        $("#btn_edit").val('Guardar');
        socket.emit('edit', {
            edit: true,
            xml_proyect: null,
            user_modificando: user
        });
    } else {
        $("#btn_edit").val('Click para editar');
        socket.emit('edit', {
            edit: false,
            xml_proyect: d.toXML()
        });
    }
    edit = !edit;

});

socket.on('edit', function (data) {
    edit = data.edit;

    toastr.options = {
        "newestOnTop": true,
        "positionClass": "toast-bottom-center",
        "showDuration": "20000",
        "hideDuration": "10000",
        "timeOut": "20000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
    if (!data.edit) {
        Command: toastr["warning"](data.user_mod.nombre + ' Esta modificando el proyecto')
        //toastr.warning(user.nombre + ' Esta modificando el proyecto');

    } else {
        Command: toastr["success"]('Puedes modificar el proyecto')
        //toastr.success('Puedes modificar el proyecto');

    }
    actualizarEdit();
});


socket.on('updateXML', function (data) {
    var parser = new DOMParser();
    var xmlDoc = parser.parseFromString(data, 'text/xml');
    d.fromXML(xmlDoc);

});


//// anadido para tener el chat dentro del editor



if (messages != null) { // si hay mensajes
    for (var i = 0; i < messages.length; i++) {
        var obj = messages[i];
        insertChat(obj.name,obj.message);
    }
}

socket.emit('add user', username);  // registro al user
//$currentInput = $inputMessage.focus();

// Whenever the server emits 'new message', update the chat body
socket.on('new message', function (data) {
    insertChat(data.username,data.message);
});

function formatAMPM(date) {
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? hours : 12; // the hour '0' should be '12'
    minutes = minutes < 10 ? '0' + minutes : minutes;
    var strTime = hours + ':' + minutes + ' ' + ampm;
    return strTime;
}

//-- No use time. It is a javaScript effect.
function insertChat(who, text, time) {
    var control = "";
    var date = formatAMPM(new Date());

    if (who == username) {

        control = '<li style="width:85%">' +
            '<div class="msj macro">' +
            '<div class="text text-l">' +
            '<p>'+who + " : " + text + '</p>' +
            '<p><small>' + date + '</small></p>' +
            '</div>' +
            '</div>' +
            '</li>';
    } else {
        control = '<li style="width:85%;">' +
            '<div class="msj-rta macro">' +
            '<div class="text text-r">' +
            '<p>' +who + " : "+text + '</p>' +
            '<p><small>' + date + '</small></p>' +
            '</div>' +
            '<div class="avatar" style="padding:0px 0px 0px 10px !important"></div>' +
            '</li>';
    }

    $("#chat_elements").append(control);

}

$(".mytext").on("keyup", function(e){
    if (e.which == 13){
        var text = $(this).val();
        if (text !== ""){
            insertChat(username, text);
            data = {
                message: text,
                user: user,
                proyecto: proyecto
            };

            // tell server to execute 'new message' and send along one parameter
            socket.emit('new message', data);
            $(this).val('');
        }
    }
});

// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("docs");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
btn.onclick = function () {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
    modal.style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}