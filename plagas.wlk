class Plaga {
    var poblacion

    method nivelDeDaño()

    method transmiteEnfermedades() {
        return poblacion >= 10
    }
}

class PlagaDeCucarachas inherits Plaga {
    var pesoPromedio
    
    override method nivelDeDaño() {
        return poblacion / 2
    }

    override method transmiteEnfermedades() {
        return super() && pesoPromedio >= 10
    }
}

class PlagaDeMosquitos inherits Plaga {
    override method nivelDeDaño() {
        return poblacion
    }

    override method transmiteEnfermedades() {
        return super() && poblacion % 3 == 0
    }
}

class PlagaDePulgas inherits Plaga {
    override method nivelDeDaño() {
        return poblacion * 2
    }
}

class PlagaDeGarrapatas inherits PlagaDePulgas {
    
}