
var valorCobrarCliente = 

document.getElementById('form').addEventListener('submit', function(e){
    e.preventDefault();

    let formulario = new FormData(document.getElementById('form'));

    fetch('datosBD.php',{
        method: 'POST',
        body: formulario
    })
    .then(res => res.json())
    .then(data => {
        if(data == 'true'){
            document.getElementById('juego').value ='';
            document.getElementById('valor').value ='';
            alert('La compra se registro correctamente.');
            inicio();
            mensaje();
        }else{
            console.log(data);
        }
    });
    function inicio(){
        let mensajeCobrar = document.getElementById('addVenta');
        mensajeCobrar.style.display='none'
    }
    function mensaje(){

        let mensajeCobrar = document.getElementById('addVenta');
        mensajeCobrar.style.display='block'

        let botonEnviar = document.getElementById

        let sectionMensaje = document.getElementById('addVenta');

        let Parrafo = document.createElement('p');
        Parrafo.innerHTML = 'Valor a cobrar: '+ valorCobrarCliente;

        sectionMensaje.appendChild(Parrafo);
    }
});
