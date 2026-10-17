class Hogar {
    var mugre
    var confort

    method esFavorable() {
        return mugre <= (confort / 2)
    }

    method recibeAtaqueDe(plaga) {
        mugre += plaga.nivelDeDaño()
    }
}

class Huerta {
    var capacidadDeProduccion

    method esFavorable() {
        return capacidadDeProduccion > nivelDeProduccionDeHuertas.nivel()
    }

    method recibeAtaqueDe(plaga) {
        if (plaga.transmiteEnfermedades()) {
            capacidadDeProduccion -= 10
        }
        capacidadDeProduccion -= (plaga.nivelDeDaño() * 0.1)
    }
}

object nivelDeProduccionDeHuertas {
    var property nivel = 100
}

class Mascota {
    var nivelDeSalud
    
    method esFavorable() {
        return nivelDeSalud > 250
    }

    method recibeAtaqueDe(plaga) {
        if (plaga.transmiteEnfermedades()) {
            nivelDeSalud -= plaga.nivelDeDaño()
        }
    }
}

class Barrio {
    const elementos = []

    method agregarElemento(elemento) {
        elementos.add(elemento)
    }
    
    method esCopado() {
        const favorablesYNoFavorables = elementos.map({ elemento => elemento.esFavorable() })
        
        return favorablesYNoFavorables.occurrencesOf(true) > favorablesYNoFavorables.occurrencesOf(false)
    }
}