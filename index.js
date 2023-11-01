 
let correo;

let seleccion;
let cantidad; 
const precio = 200; 
let totalPagar;


const alfabetos = /^[A-Za-zÁÉÍÓÚÑáéíóúñ]+$/u;

function validarTexto(texto) {
    
    if (!alfabetos.test(texto)) {
        return false; 
    }
    return true; 
}   



(() => {
    'use strict'
  
    // Fetch all the forms we want to apply custom Bootstrap validation styles to



            
    const nombreUsuario = document.getElementById("nombre");
    const apellidoUsuario = document.getElementById("apellido"); 

        nombreUsuario.addEventListener('change', () => {
            if (!validarTexto(nombreUsuario.value)) {
                document.getElementById('nombre').classList.add('is-invalid');  
            } else {
                document.getElementById('nombre').classList.add('is-valid');
            }
            nombreUsuario.classList.add('was-validated'); 
        })

        apellidoUsuario.addEventListener('change', () => {
            if (!validarTexto(apellidoUsuario.value)) {
                document.getElementById('apellido').classList.add('is-invalid');  
            } else {
                document.getElementById('apellido').classList.add('is-valid');
            }
            apellidoUsuario.classList.add('was-validated'); 
        })

        const forms = document.querySelectorAll('.needs-validation')
        // Loop over them and prevent submission
        Array.from(forms).forEach(form => {

            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                
                    event.preventDefault()
                    event.stopPropagation()

                } 

                seleccion = document.getElementById("inputCategoria").value; 
                cantidad = document.getElementById("inputCantidad").value

                totalPagar = precio * cantidad; 

                if (seleccion == "estudiante") {
                    totalPagar = totalPagar - (totalPagar * 0.8)
                } else if (seleccion == "trainee") {
                    totalPagar = totalPagar - (totalPagar * 0.5)
                } else {
                    totalPagar = totalPagar - (totalPagar * 0.15)
                }

                document.getElementById("totalAPagar").innerHTML = totalPagar; 

                console.log(seleccion); 
                console.log(cantidad); 
                console.log(totalPagar); 

                correo = document.getElementById("mail");

                form.classList.add('was-validated')


            }, false)
        })
  })()












