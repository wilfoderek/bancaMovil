//
//Nota: clase de validación de los input text
//
class Validacion {

  String? validarPassword(String clave) {
    if(clave.isEmpty){
      return 'La clave es obligatoria';
    }
    if (clave.length < 4) {
      return 'La longitud del password es muy corta';
    }
    if (clave.length > 15) {
      return 'La longitud del password es muy larga';
    }
    return null;
  }

  String? validarCorreo(String correo){
    if (correo.isEmpty) {
      return 'El correo es obligatorio';
    }
    if (correo.length < 4) {
      return 'El correo es muy corto';
    }
    if (correo.length > 150) {
      return 'El correo es muy largo';
    }
    if (!RegExp(
        r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
        .hasMatch(correo)) {
      return 'Ingrese un correo válido';
    }

    return null;
  }

}
