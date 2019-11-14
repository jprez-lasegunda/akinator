require "./lib/pregunta.rb"
require "./lib/persona.rb"
require "./lib/juego.rb"


def iniciar_juego
	@@juego = Juego.new	
end

def lista_personas
	marcia = Persona.new "Marcia", %w{mujer cabello_castaño tester marron mate}
	matias = Persona.new "Matias", %w{hombre cabello_castaño programa river barba verde mate}
	franco = Persona.new "Franco", %w{hombre cabello_castaño lentes boca analista verde mate buen_comer}
	juan = Persona.new "Juan", %w{hombre cabello_castaño programa san_lorenzo barba verde mate buen_comer}
	yamila = Persona.new "Matias", %w{mujer cabello_rubio lentes central tester marron mate}
	emmanuel = Persona.new "Emmanuel", %w{hombre canas lentes boca tattoo barba tester verdes mate}
	gustavo = Persona.new "Gustavo", %w{hombre se_le_vuelan_las_chapas lentes programa boca barba marron mate}
	alejandro = Persona.new "Alejandro", %w{hombre cabello_oscuro central tattoo barba marron mate}
	lucas = Persona.new "Lucas", %w{hombre cabello_oscuro lentes programa boca marron marron}
	cholo = Persona.new "Cholo", %w{hombre canas lentes newells barba tester marron}
	renzo = Persona.new "Renzo", %w{hombre cabello_oscuro programa boca barba marron mate}
	pablo = Persona.new "Pablo", %w{hombre cabello_castaño lentes programa barba marron mate buen_comer}
	hernan = Persona.new "Hernan", %w{hombre canas central barba marron buen_comer}
	gisela = Persona.new "Gisela", %w{mujer cabello_oscuro lentes marron mate}
	guillermo = Persona.new "Guillermo", %w{hombre cabello_rubio lentes programa river tattoo azules mate buen_comer}
	federico = Persona.new "Federico", %w{hombre cabello_oscuro programa central barba marron buen_comer}
	agustin = Persona.new "Agustin", %w{hombre cabello_oscuro programa central marron mate}
	victoria = Persona.new "Victoria", %w{mujer cabello_castaño programa central marron mate}
	andres = Persona.new "Andres", %w{hombre cabello_oscuro programa barba marron}
	martin = Persona.new "Martin", %w{hombre canas lentes barba azules}

	return [marcia, matias, franco, juan, yamila, emmanuel, gustavo, alejandro, lucas, cholo, renzo, pablo, hernan, gisela, guillermo, federico, agustin, victoria, andres, martin]
end

def sumar
	if @@juego.cont <= @@juego.max
		@@juego.incrementar_cont
		@@juego.cont	
  else
		fail "Te pasaste negr@"
	end		
end

iniciar_juego
