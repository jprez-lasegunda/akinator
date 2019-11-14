require "./lib/pregunta.rb"
require "./lib/persona.rb"
require "./lib/juego.rb"


def iniciar_juego persona=0
	@@juego = Juego.new	persona
end

def lista_personas
	marcia = Persona.new "Marcia", %w{mujer cabello_castaño tester ojos_marrones matero l2}
	matias = Persona.new "Matias", %w{hombre cabello_castaño programador de_river barbudo ojos_verdes matero l2}
	franco = Persona.new "Franco", %w{hombre cabello_castaño medio_chicato de_boca analista ojos_verdes matero de_buen_comer l2}
	juan = Persona.new "Juan", %w{hombre cabello_castaño programador de_san_lorenzo barbudo ojos_verdes matero de_buen_comer l2}
	yamila = Persona.new "Matias", %w{mujer cabello_rubio medio_chicato de_central tester ojos_marrones matero l2}
	emmanuel = Persona.new "Emmanuel", %w{hombre canoso medio_chicato de_boca tattoo barbudo tester ojos_verdes matero l2}
	gustavo = Persona.new "Gustavo", %w{hombre se_le_vuelan_las_chapas medio_chicato programador de_boca barbudo ojos_marrones matero l2}
	alejandro = Persona.new "Alejandro", %w{hombre cabello_oscuro de_central tattoo barbudo ojos_marrones matero l2}
	lucas = Persona.new "Lucas", %w{hombre cabello_oscuro medio_chicato programador de_boca ojos_marrones ojos_marrones l2}
	cholo = Persona.new "Cholo", %w{hombre canoso medio_chicato de_newells barbudo tester ojos_marrones l2}
	renzo = Persona.new "Renzo", %w{hombre cabello_oscuro programador de_boca barbudo ojos_marrones matero l2}
	pablo = Persona.new "Pablo", %w{hombre cabello_castaño medio_chicato programador barbudo ojos_marrones matero de_buen_comer l2}
	hernan = Persona.new "Hernan", %w{hombre canoso de_central barbudo ojos_marrones de_buen_comer l2}
	gisela = Persona.new "Gisela", %w{mujer cabello_oscuro medio_chicato ojos_marrones matero l2}
	guillermo = Persona.new "Guillermo", %w{hombre cabello_rubio medio_chicato programador de_river tattoo ojos_azules matero de_buen_comer l2}
	federico = Persona.new "Federico", %w{hombre cabello_oscuro programador de_central barbudo ojos_marrones de_buen_comer l2}
	agustin = Persona.new "Agustin", %w{hombre cabello_oscuro programador de_central ojos_marrones matero l2}
	victoria = Persona.new "Victoria", %w{mujer cabello_castaño programador de_central ojos_marrones matero l2}
	andres = Persona.new "Andres", %w{hombre cabello_oscuro programador barbudo ojos_marrones kleer}
	martin = Persona.new "Martin", %w{hombre canoso medio_chicato barbudo ojos_azules kleer}

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
