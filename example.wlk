// example.wlk
//se informa ...
//lo dejamos en blanco para luego darle indicaciones
class Bici {
  const rodado
  const largo
  const marca
  const accesorios = []//permite concer el orden 

  method altura()= rodado * 2.5 + 15
  method velocidadCrucero()=if(largo > 120) rodado + 6 else rodado + 2
  method carga()= accesorios.sum({a=>a.carga()})
  method agregarAccesorio(unAccesorio){accesorios.add(unAccesorio)}
  method quitarAccesorio(unAccesorio){accesorios.remove(unAccesorio)}
  method peso()= rodado / 2 + self.pesoAccesorios()
  method pesoAccesorios()= accesorios.sum({a=>a.peso()})
  method tieneLuz()=accesorios.any({a=>a.esLuminoso()})
  method cantidadAccesoriosLivianos()= accesorios.count({})

}
//carga, peso, esLuminoso para los accesorios

class Farolito{
  method carga() = 0
  method peso()=0.5
  method esLuminoso()= true
}

class Canasto{
  const volumen
  method carga() = volumen * 2
  method peso()= volumen / 10
  method esLuminoso()= false
}

class Morral {
  const largo
  var tieneOjoDeGato
  method ponerOjoDeGato(){tieneOjoDeGato = true}
  method quitarOjoDeGato(){tieneOjoDeGato = false}
  method esLuminoso()= tieneOjoDeGato
  method peso()=1.2
  method carga()= largo / 3

}