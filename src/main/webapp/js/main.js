function numValidation(evt) {
    // code is the decimal ASCII representation of the pressed key.
    var code = (evt.which) ? evt.which : evt.keyCode;

    if (code == 8) { // backspace.
        return true;
    } else if (code >= 48 && code <= 57) { // is a number.
        return true;
    } else { // other keys.
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Recuerda que solo debes ingresar numeros'
        });
        return false;
    }
}