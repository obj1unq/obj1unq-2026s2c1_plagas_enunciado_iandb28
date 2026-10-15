class Hogar {
    var mugre
    var confort

    method esFavorable() {
        return mugre <= (confort / 2)
    }
}

class Huerta {
    var capacidadDeProduccion

    method esFavorable() {
        return capacidadDeProduccion > nivelDeProduccionDeHuertas.nivel()
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