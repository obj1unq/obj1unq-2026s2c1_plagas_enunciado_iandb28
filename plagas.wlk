class Plaga {
    var property poblacion

    method nivelDeDaño()

    method transmiteEnfermedades() {
        return poblacion >= 10
    }

    method atacaA(elemento) {
        self.recibiEfectosDeAtacar()
        elemento.recibeAtaqueDe(self)
    }

    method recibiEfectosDeAtacar() {
        poblacion += poblacion * 0.1
    }
}

class PlagaDeCucarachas inherits Plaga {
    var property pesoPromedio
    
    override method nivelDeDaño() {
        return poblacion / 2
    }

    override method transmiteEnfermedades() {
        return super() && pesoPromedio >= 10
    }

    override method recibiEfectosDeAtacar() {
        super()
        pesoPromedio += 2
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
    override method recibiEfectosDeAtacar() {
        poblacion += poblacion * 0.2
    }
}