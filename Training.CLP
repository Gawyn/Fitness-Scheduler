;;; Programes d'entrenament
;;; Autors: Cristian Planas i Pere Joan Martorell
;;; Pràctica de Sistemes Basats en el Coneixement

; Sun Jan 02 09:45:35 CET 2011
; 
;+ (version "3.4.4")
;+ (build "Build 579")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot conpesas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot objetivo
		(type SYMBOL)
		(allowed-values pes enforma flexibilitat musculacio esport)
		(create-accessor read-write))
	(single-slot tiempo
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nom_exercici
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot repeticiones
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dificultat
		(type SYMBOL)
		(allowed-values moderada normal dificil)
;+		(cardinality 0 1)
		(create-accessor read-write)))

					
(defclass Exercici
	(is-a USER)
	(role concrete)
	(single-slot nom_exercici
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot objetivo
		(type SYMBOL)
		(allowed-values pes enforma flexibilitat musculacio esport)
		(create-accessor read-write))
	(single-slot dificultat
		(type SYMBOL)
		(allowed-values moderada normal dificil)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tiempo
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Aerobic
	(is-a Exercici)
	(role concrete))

(defclass Anaerobic
	(is-a Exercici)
	(role concrete)
	(single-slot repeticiones
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot conpesas
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Abdominals
	(is-a Anaerobic)
	(role concrete))

(defclass Biceps
	(is-a Anaerobic)
	(role concrete))

(defclass Pectorals
	(is-a Anaerobic)
	(role concrete))

(defclass Cames
	(is-a Anaerobic)
	(role concrete))

(defclass Esquena
	(is-a Anaerobic)
	(role concrete))

(defclass Activitats
	(is-a Exercici)
	(role concrete)
	(single-slot boperesquena
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Estiraments
	(is-a Exercici)
	(role concrete))
	
(definstances instancies
	; Wed Jan 05 10:37:43 GMT 2011
	; 
	;+ (version "3.4.4")
	;+ (build "Build 579")

	([prog_exercicis_Class0] of  Biceps

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Curl de biceps a una mano concentrado")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class10] of  Aerobic

		(dificultat moderada)
		(nom_exercici "Stepper")
		(tiempo 15))

	([prog_exercicis_Class10000] of  Biceps

		(dificultat moderada)
		(nom_exercici "Curl de biceps en polea baja")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10031] of  Aerobic

		(dificultat normal)
		(nom_exercici "Bicicleta")
		(tiempo 30))

	([prog_exercicis_Class10037] of  Aerobic

		(dificultat dificil)
		(nom_exercici "Bicicleta")
		(tiempo 60))

	([prog_exercicis_Class10043] of  Aerobic

		(dificultat normal)
		(nom_exercici "Footing")
		(tiempo 30))

	([prog_exercicis_Class10047] of  Aerobic

		(dificultat dificil)
		(nom_exercici "Footing")
		(tiempo 60))

	([prog_exercicis_Class10051] of  Activitats

		(dificultat moderada)
		(nom_exercici "Futbol sala")
		(tiempo 30))

	([prog_exercicis_Class10053] of  Activitats

		(dificultat moderada)
		(nom_exercici "Basquet")
		(tiempo 30))

	([prog_exercicis_Class10057] of  Activitats

		(dificultat moderada)
		(nom_exercici "Pilates")
		(tiempo 30))

	([prog_exercicis_Class10060] of  Abdominals

		(dificultat moderada)
		(nom_exercici "Abdominals simples")
		(repeticiones 20)
		(tiempo 5))

	([prog_exercicis_Class10063] of  Abdominals

		(dificultat normal)
		(nom_exercici "Abdominals simples")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class10068] of  Abdominals

		(dificultat normal)
		(nom_exercici "Abdominals amb les cames elevades")
		(repeticiones 20)
		(tiempo 5))

	([prog_exercicis_Class10071] of  Abdominals

		(dificultat dificil)
		(nom_exercici "Abdominals amb les cames elevades")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class10075] of  Biceps

		(conpesas TRUE)
		(dificultat normal)
		(nom_exercici "Curl de biceps a una mano de pie")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10078] of  Biceps

		(conpesas TRUE)
		(dificultat moderada)
		(nom_exercici "Curl de biceps a una mano en banco")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10080] of  Biceps

		(conpesas TRUE)
		(dificultat normal)
		(nom_exercici "Curl de biceps con barra de pie")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10082] of  Biceps

		(conpesas TRUE)
		(dificultat moderada)
		(nom_exercici "Curl de biceps con barra en banco")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10084] of  Biceps

		(conpesas TRUE)
		(dificultat normal)
		(nom_exercici "Curl de biceps a una mano concentrado")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10086] of  Pectorals

		(conpesas TRUE)
		(dificultat normal)
		(nom_exercici "Press banca")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10088] of  Pectorals

		(conpesas TRUE)
		(dificultat moderada)
		(nom_exercici "Press banca inclinado")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10090] of  Pectorals

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Press banca declinado")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10092] of  Pectorals

		(dificultat moderada)
		(nom_exercici "Press barra (maquina)")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10094] of  Pectorals

		(dificultat normal)
		(nom_exercici "Compresion pectorales (maquina)")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10096] of  Activitats

		(dificultat moderada)
		(nom_exercici "Voleibol")
		(tiempo 30))

	([prog_exercicis_Class10109] of  Cames

		(conpesas TRUE)
		(dificultat normal)
		(nom_exercici "Sentadilla Squat")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10112] of  Activitats

		(boperesquena TRUE)
		(dificultat moderada)
		(nom_exercici "Natacio")
		(tiempo 30))

	([prog_exercicis_Class10115] of  Cames

		(conpesas FALSE)
		(dificultat moderada)
		(nom_exercici "Elevacion de talones sentado")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10118] of  Cames

		(conpesas FALSE)
		(dificultat normal)
		(nom_exercici "Isquiotibiales (maquina)")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10122] of  Esquena

		(conpesas FALSE)
		(dificultat moderada)
		(nom_exercici "Politja per darrere del clatell (maquina)")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10124] of  Esquena

		(conpesas TRUE)
		(dificultat normal)
		(nom_exercici "Press d'espatlles amb barra per darrere del clatell")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10126] of  Esquena

		(dificultat moderada)
		(nom_exercici "Lumbars assegut (maquina)")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class10128] of  Aerobic

		(dificultat dificil)
		(nom_exercici "Correr en cinta")
		(tiempo 30))

	([prog_exercicis_Class14] of  Aerobic

		(dificultat normal)
		(nom_exercici "Stepper")
		(tiempo 30))

	([prog_exercicis_Class18] of  Activitats

		(dificultat normal)
		(nom_exercici "Rem")
		(objetivo musculacio)
		(tiempo 30))

	([prog_exercicis_Class2] of  Biceps

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Curl de biceps a una mano de pie")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20001] of  Biceps

		(dificultat normal)
		(nom_exercici "Curl de biceps en polea baja")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20002] of  Aerobic

		(dificultat moderada)
		(nom_exercici "Footing")
		(tiempo 15))

	([prog_exercicis_Class20003] of  Biceps

		(dificultat normal)
		(nom_exercici "Curl de biceps a una mano (maquina)")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class20004] of  Biceps

		(dificultat dificil)
		(nom_exercici "Curl de biceps a una mano (maquina)")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20026] of  Cames

		(dificultat dificil)
		(nom_exercici "Isquiotibiales (maquina)")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20029] of  Cames

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Sentadilla Squat")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20032] of  Aerobic

		(dificultat normal)
		(nom_exercici "Bicicleta estatica")
		(tiempo 15))

	([prog_exercicis_Class20043] of  Aerobic

		(dificultat moderada)
		(nom_exercici "Bicicleta")
		(tiempo 15))

	([prog_exercicis_Class20048] of  Aerobic

		(dificultat normal)
		(nom_exercici "Correr en cinta")
		(tiempo 15))

	([prog_exercicis_Class20053] of  Aerobic

		(dificultat dificil)
		(nom_exercici "Stepper")
		(tiempo 60))

	([prog_exercicis_Class20056] of  Pectorals

		(dificultat dificil)
		(nom_exercici "Compresion pectorales (maquina)")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20058] of  Pectorals

		(dificultat dificil)
		(nom_exercici "Press barra (maquina)")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20060] of  Pectorals

		(conpesas TRUE)
		(dificultat normal)
		(nom_exercici "Press banca inclinado")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20062] of  Pectorals

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Press banca")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20064] of  Abdominals

		(dificultat dificil)
		(nom_exercici "Abdominals simples")
		(repeticiones 100)
		(tiempo 5))

	([prog_exercicis_Class20068] of  Esquena

		(dificultat normal)
		(nom_exercici "Lumbars assegut (maquina)")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20070] of  Esquena

		(dificultat normal)
		(nom_exercici "Politja per darrere del clatell (maquina)")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class20072] of  Esquena

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Press d'espatlles amb barra per darrere del clatell")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class22] of  Cames

		(dificultat normal)
		(nom_exercici "Elevacion de talones sentado")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class24] of  Aerobic

		(dificultat dificil)
		(nom_exercici "Bicicleta estatica")
		(tiempo 30))

	([prog_exercicis_Class30002] of  Biceps

		(dificultat normal)
		(nom_exercici "Curl de biceps a dos manos (maquina)")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30003] of  Biceps

		(dificultat dificil)
		(nom_exercici "Curl de biceps a dos manos (maquina)")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30004] of  Cames

		(dificultat moderada)
		(nom_exercici "Curl de piernas acostado (maquina)")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30005] of  Cames

		(dificultat normal)
		(nom_exercici "Curl de piernas acostado (maquina)")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30006] of  Esquena

		(dificultat dificil)
		(nom_exercici "Dominadas en barra fija")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30007] of  Esquena

		(dificultat moderada)
		(nom_exercici "Pull-over con polea alta")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30008] of  Esquena

		(dificultat normal)
		(nom_exercici "Pull-over con polea alta")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30009] of  Esquena

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Peso muerto con barra")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30010] of  Pectorals

		(dificultat moderada)
		(nom_exercici "Cruces de pie con poleas")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30011] of  Pectorals

		(dificultat normal)
		(nom_exercici "Cruces de pie con poleas")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30012] of  Pectorals

		(dificultat moderada)
		(nom_exercici "Flexiones de brazos en el suelo")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30013] of  Pectorals

		(dificultat normal)
		(nom_exercici "Flexiones de brazos en el suelo")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30014] of  Pectorals

		(dificultat dificil)
		(nom_exercici "Flexiones de brazos en el suelo")
		(repeticiones 100)
		(tiempo 5))

	([prog_exercicis_Class30015] of  Pectorals

		(dificultat moderada)
		(nom_exercici "Aperturas en contractor de pecho (maquina)")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30016] of  Pectorals

		(dificultat normal)
		(nom_exercici "Aperturas en contractor de pecho (maquina)")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30017] of  Cames

		(dificultat moderada)
		(nom_exercici "Flexion de tronco al frente")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30018] of  Cames

		(dificultat normal)
		(nom_exercici "Flexion de tronco al frente")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30019] of  Abdominals

		(dificultat normal)
		(nom_exercici "Encogimientos abdominales con polea alta")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30020] of  Abdominals

		(dificultat dificil)
		(nom_exercici "Encogimientos abdominales con polea alta")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30021] of  Abdominals

		(dificultat moderada)
		(nom_exercici "Elevacion de rodillas en paralelas")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30022] of  Abdominals

		(dificultat normal)
		(nom_exercici "Elevacion de rodillas en paralelas")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30023] of  Abdominals

		(dificultat normal)
		(nom_exercici "Elevacioon de piernas en tabla inclinada")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30024] of  Abdominals

		(dificultat dificil)
		(nom_exercici "Elevacion de piernas en tabla inclinada")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30025] of  Abdominals

		(dificultat moderada)
		(nom_exercici "Flexion lateral de tronco en banco")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30026] of  Abdominals

		(dificultat normal)
		(nom_exercici "Flexion lateral de tronco en banco")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30027] of  Biceps

		(dificultat normal)
		(nom_exercici "Dominadas con palma hacia nosotros")
		(repeticiones 30)
		(tiempo 5))

	([prog_exercicis_Class30028] of  Biceps

		(dificultat dificil)
		(nom_exercici "Dominadas con palma hacia nosotros")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class30029] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de cuadriceps")
		(tiempo 5))

	([prog_exercicis_Class30030] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de femorales")
		(tiempo 5))

	([prog_exercicis_Class30031] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de gemelos")
		(tiempo 5))

	([prog_exercicis_Class30032] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos del psoas iliaco")
		(tiempo 5))

	([prog_exercicis_Class30033] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de espalda")
		(tiempo 5))

	([prog_exercicis_Class30034] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de antebrazos")
		(tiempo 5))

	([prog_exercicis_Class30035] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de triceps")
		(tiempo 5))

	([prog_exercicis_Class30036] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de cervicales")
		(tiempo 5))

	([prog_exercicis_Class30037] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de abductores")
		(tiempo 5))

	([prog_exercicis_Class30038] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de hombros")
		(tiempo 5))

	([prog_exercicis_Class30039] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de oblicuos")
		(tiempo 5))

	([prog_exercicis_Class30040] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de lumbares")
		(tiempo 5))

	([prog_exercicis_Class30041] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos de cuello")
		(tiempo 5))

	([prog_exercicis_Class30042] of  Estiraments

		(dificultat moderada)
		(nom_exercici "Estiramientos isquiotibiales")
		(tiempo 5))

	([prog_exercicis_Class30043] of  Activitats

		(dificultat moderada)
		(nom_exercici "Partit de ping-pong")
		(tiempo 15))

	([prog_exercicis_Class30044] of  Activitats

		(dificultat moderada)
		(nom_exercici "Jugar a la Wii")
		(tiempo 15))

	([prog_exercicis_Class30045] of  Aerobic

		(dificultat dificil)
		(nom_exercici "Sprint")
		(tiempo 5))

	([prog_exercicis_Class4] of  Biceps

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Curl de biceps a una mano en banco")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class6] of  Biceps

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Curl de biceps con barra de pie")
		(repeticiones 50)
		(tiempo 5))

	([prog_exercicis_Class8] of  Biceps

		(conpesas TRUE)
		(dificultat dificil)
		(nom_exercici "Curl de biceps con barra en banco")
		(repeticiones 50)
		(tiempo 5))

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       REGLES       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;
;;; MODUL INICI
;;;

(defmodule MAIN (export ?ALL))

;;; Obte una resposta a la pregunta d'entre un conjunt de possibles valors
(deffunction pregunta (?pregunta $?valors)
	(printout t crlf ?pregunta)
	(bind ?resposta (read))
	(while (not (member ?resposta ?valors)) do
		(printout t ?pregunta)
		(bind ?resposta (read))
	)
	?resposta
)

;;; Fa una pregunta a la que s'ha de respondre "si" o "no"
(deffunction si-o-no (?pregunta)
	(bind ?resposta (pregunta (str-cat ?pregunta "(si/no) ") si no))
	?resposta
)

;;; Fa una pregunta a la que s'ha de respondre "si", "no", "potser-si", "potser-no" O "indiferent"
(deffunction si-o-no++ (?pregunta)
	(bind ?resposta (pregunta (str-cat ?pregunta "(si/potser-si/indiferent/potser-no/no) ") si no potser-si potser-no indiferent))
	?resposta
)

;;; Fa una pregunta a la qual se li ha de respondre un numero en un rang
(deffunction obte-nombre-rang (?question ?rangini ?rangfi ?errorini ?errorfi)
	(printout t crlf ?question)
	(bind ?answer (read))
	(while (not (integerp ?answer))
		(printout t ?question)
		(bind ?answer (read))
	)
	(if (or (< ?answer ?rangini) (> ?answer ?rangfi)) then
		(if (< ?answer ?rangini)
		then
			(printout t ?errorini crlf)
		else
			(if (> ?answer ?rangfi)
			then
				(printout t ?errorfi crlf)
			)
		)
		(bind ?answer (obte-nombre-rang ?question ?rangini ?rangfi ?errorini ?errorfi))
	)
	?answer
)

;; Pregunta amb resposta multiple
(deffunction pregunta-llista (?pregunta $?valors)
	(bind ?linia (format nil "%s" (str-cat ?pregunta "(introdueix els indexs dels valors separats per espais) ")))
	(printout t crlf ?linia)
	(progn$ (?var ?valors) 
			(bind ?linia (format nil "  %d. %s" ?var-index ?var))
			(printout t crlf ?linia )
	)
	(printout t crlf)
	(bind ?resp (readline))
	;;; ?elems son cadascun dels nombres de la resposta
	(bind ?elems (str-explode ?resp))
	(bind $?llista (create$ ))
	(progn$ (?var ?elems) 
		(if (numberp ?var)
		then	
			(bind ?aux (nth$ ?var ?valors))
			;;; Comprovem que la resposta conté valors que pertanyen a ?valors
			(if (member$ ?aux ?valors)
				then 
					;;; si no forma part de la llista de valors, l'afegim
					(if (not (member$ ?aux ?llista))
						then (bind ?llista (insert$ ?llista 1 ?aux))
					)
			)
		)
	)
	?llista
)

;; Pregunta amb resposta unica a partir d'una llista de valors possibles
(deffunction pregunta-unica (?pregunta $?valors)
	(bind ?linia (format nil "%s" (str-cat ?pregunta "(introdueix l'index del valor a seleccionar) ")))
	(printout t crlf ?linia)
	(progn$ (?var ?valors) 
			(bind ?linia (format nil "  %d. %d" ?var-index ?var))
			(printout t crlf ?linia)
	)
	(printout t crlf)
	(bind ?answer (read))
	(bind ?size (length$ $?valors))
	(while (or (< ?answer 1) (> ?answer ?size))
		(bind ?answer (pregunta-unica ?pregunta $?valors))
	)
	(bind ?result (nth$ ?answer $?valors))
	?result
)

;; Pregunta amb resposta unica a partir d'una llista de valors possibles
(deffunction pregunta-unica-string (?pregunta $?valors)
	(bind ?linia (format nil "%s" (str-cat ?pregunta "(introdueix l'index del valor a seleccionar) ")))
	(printout t crlf ?linia)
	(progn$ (?var ?valors) 
			(bind ?linia (format nil "  %d. %s" ?var-index ?var))
			(printout t crlf ?linia)
	)
	(printout t crlf)
	(bind ?answer (read))
	(bind ?size (length$ $?valors))
	(while (or (< ?answer 1) (> ?answer ?size))
		(bind ?answer (pregunta-unica ?pregunta $?valors))
	)
	(bind ?result (nth$ ?answer $?valors))
	?result
)

;;; Obte una resposta a una pregunta que cal respondre si o no i quin tipus
(deffunction preg-tipus (?pregunta1 ?pregunta2 $?valors)
	(bind ?resposta (si-o-no ?pregunta1))
	(if (eq ?resposta si)
	then
		(bind ?resposta (pregunta-llista ?pregunta2 $?valors))
	else
		(bind ?resposta cap)
	)
	?resposta
)

;;; Mostra el titol d'un dia determinat de l'horari
(deffunction escriu-titol (?dia)
	(printout t "+-------------+----------------------------------------------------------------------+" crlf)
	(format t "|  %-09s  |                                                                      |%n" ?dia )
	(printout t "+-------------+                                                                      |" crlf)
)

;;; Mostra el llistat d'exercicis 
(deffunction escriu-horari ($?llistat)
	(if (not(eq (str-compare (nth$ 1 $?llistat) desconegut) 0))
	then
		(progn$ (?exer $?llistat)
			(bind ?cadena (send ?exer get-nom_exercici))
			;;; Cas Anaerobic
			(if (superclassp Anaerobic (class ?exer))
				then (bind ?cadena (str-cat ?cadena " [" (send ?exer get-repeticiones) " reps.] {" (send ?exer get-dificultat) "}" ))
			else
				;;; Cas simple
				(bind ?cadena (str-cat (send ?exer get-tiempo) " min de " ?cadena " {" (send ?exer get-dificultat) "}"))
			)
			(format t "| %-082s |%n" ?cadena )
		)
	)
)

;;; Omple amb exercicis fins a ocupar tot el temps disponible
(deffunction omple-dia (?t $?insts)
	(bind $?d (create$))
	(bind ?resta ?t)
	(while (not(= ?resta 0))
		(bind ?rand (random 1 (length$ $?insts)))
		(bind ?exer (nth$ ?rand $?insts))
		(bind ?texer (send ?exer get-tiempo))
		(bind ?resta (- ?t ?texer))
		;;; Si hi cap, l'afegim
		(if (>= ?resta 0) then
			(bind $?d (insert$ $?d 1 ?exer))	
			;;; actualitzem temps disponible
			(bind ?t ?resta)
		)
	)
	$?d
)

;;; TEMPLATES

;;; Template que emmagatzema el programa d'entrenament resultant
(deftemplate horari "Configuració setmanal del programa d'entrenament"
	(multislot dilluns)
	(multislot dimarts)
	(multislot dimecres)
	(multislot dijous)
	(multislot divendres)
	(multislot dissabte)
)

;;; Template que emmagatzema el temps disponible per cadascun dels dies
(deftemplate tempsdisp "Temps disponibles"
	(slot t_dil)
	(slot t_dim)
	(slot t_dix)	
	(slot t_dij)	
	(slot t_div)
	(slot t_dis)
)

;;; Inicialitzacio del resultat
(deffacts resultat
	(horari
		(dilluns (create$ ))
		(dimarts (create$ ))
		(dimecres (create$ ))
		(dijous (create$ ))
		(divendres (create$ ))
		(dissabte (create$ ))
	)
)

;;; Inicialitzacio del temps disponible
(deffacts tempsdisp
	(tempsdisp
		(t_dil 0)
		(t_dim 0)
		(t_dix 0)
		(t_dij 0)
		(t_div 0)
		(t_dis 0)
	)
)

;;; Template que emmagatzema el tipus de client
(deftemplate usuari
	(slot edat)
	(slot pes)
	(slot altura)
	(slot constitucio)
	(slot pressio-min)
	(slot pressio-max)
	(slot fc)
)

;;; Inicialitzem les dades amb una categoria desconeguda
(deffacts tipus-usuari
	(usuari
		(edat desconegut)
		(pes desconegut)
		(altura desconegut)
		(constitucio desconegut)
		(pressio-min desconegut)
		(pressio-max desconegut)
		(fc desconegut)
	)
)



;;; REGLES

;;; Mostrem el titol del programa
(defrule presentacio "Regla inicial de presentacio"
	(declare (salience 20))
	=>
	(printout t crlf)
	(printout t "+------------------------------------------------+" crlf)
	(printout t "|                                                |" crlf)
	(printout t "|   P R O G R A M A  D ' E N T R E N A M E N T   |" crlf)
	(printout t "|                                                |" crlf)
	(printout t "+------------------------------------------------+" crlf)
	(focus preguntes-determinar-usuari)
)

;;;
;;; MODUL DE PREGUNTES PER CATEGORITZAR L'USUARI
;;;

(defmodule preguntes-determinar-usuari "Modul de caracteritzacio de l'usuari"
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Categoritzem l'edat de l'usuari
(defrule determinar-edat
	?u <- (usuari (edat desconegut))
	=>
	(bind ?edat (obte-nombre-rang "Quina edat te? " 14 100 "Es massa jove per accedir al programa d'entrenament" "Sobrepassa l'edat limit permesa per fer sobreesforcos"))
	(if (< ?edat 18)
	then
		(modify ?u (edat adolescent))
	else
		(if (< ?edat 60)
		then
			(modify ?u (edat adult))
		else
			(modify ?u (edat vell))
		)
	)
)

;;; Obtenim el pes de l'usuari
(defrule determinar-pes
	?u <- (usuari (pes desconegut))
	=>
	(bind ?pes (obte-nombre-rang "Quin pes te? " 20 200 "Aquest programa no esta preparat per al seu perfil de pes" "Sobrepassa el pes pel qual ha estat preparat aquest programa"))
	(modify ?u (pes ?pes))
)

;;; Obtenim l'altura de l'usuari
(defrule determinar-altura
	?u <- (usuari (altura desconegut))
	=>
	(bind ?altura (obte-nombre-rang "Quina altura (en centimetres) fa? " 30 250 "Aquest programa no esta preparat per al seu perfil d'altura" "Sobrepassa l'altura per la qual ha estat preparat aquest programa"))
	(modify ?u (altura ?altura))
)

;;; Calculem l'index de massa corporal i 
;;; en categoritzem la seva constitucio
(defrule determinar-imc
	?u <- (usuari (constitucio desconegut))
	(usuari (pes ?pes))
	(usuari (altura ?altura))
	=>
	(bind ?imc (/ ?pes (* ?altura ?altura)))
	(if (< ?imc 0.00175)
	then
		(modify ?u (constitucio prim))
	else
		(if (< ?imc 0.00275)
		then
			(modify ?u (constitucio normal))
		else
			(if (< ?imc 0.0035)
			then
				(modify ?u (constitucio sobrepes))
			else
				(modify ?u (constitucio obes))
			)
		)
	)
)

;;; Obtenim la pressio minima
(defrule determinar-pressio-min
	?u <- (usuari (pressio-min desconegut))
	=>
	(bind ?pmin (obte-nombre-rang "Quina pressio minima te? " 59 109 "Te la pressio massa baixa, li recomanem no realitzar esforcos" "Te la pressio massa alta, li recomanem no realitzar esforcos"))
	;;; Si esta dins el rang categoritzem la pressio segons normal o hiper 
	(if (and (< ?pmin 110)(> ?pmin 90))
	then (modify ?u (pressio-min hiper))
	else (modify ?u (pressio-min normal))
	)	
)

;;; Obtenim la pressio maxima
(defrule determinar-pressio-max
	?u <- (usuari (pressio-max desconegut))
	=>
	(bind ?pmax (obte-nombre-rang "Quina pressio maxima te? " 91 179 "Te la pressio massa baixa, li recomanem no realitzar esforcos" "Te la pressio massa alta, li recomanem no realitzar esforcos"))
	(if (and (< ?pmax 180)(> ?pmax 141))
	then (modify ?u (pressio-max hiper))
	else (modify ?u (pressio-max normal))
	)
)

;;; Obtenim la frequencia cardiaca
(defrule determinar-frequencia
	?u <- (usuari (fc desconegut))
	=>
	(bind ?fc (obte-nombre-rang "Quina frequencia cardiaca te? " 70 160 "Te la frequencia massa baixa, li recomanem no realitzar esforcos" "Te la frequencia massa alta, li recomanem no realitzar esforcos"))
	(if (and (<= ?fc 160)(>= ?fc 130))
	then (modify ?u (fc hiper))
	else (modify ?u (fc normal))
	)
)
	
;;; Obtenim els problemes musculoesqueletics
(defrule determinar-problemes
	=>
 	(assert (tipus-problemes (preg-tipus "Te problemes musculoesqueletics? " "De quin tipus? " cervicals esquena)))
)	

;;; Obtenim els tipus d'activitat fisica que fa habitualment
(defrule determinar-habits
	?u <- (usuari	(constitucio ?const))
	(not (visitat habits))
	=>
	(if (eq (str-compare ?const obes) 0)
	then
		(bind ?resp (si-o-no "Fa activitat anaerobica habitualment? "))
		(if (eq (str-compare ?resp si) 0)
			then (assert (tipus-habits anaerobica))
		else (assert (tipus-habits cap))
		)
	else
		(assert (tipus-habits (preg-tipus "Fa alguna activitat fisica habitualment? " "De quin tipus es? " aerobica anaerobica )))
	)
	(assert (visitat habits))
)

;;; Preguntem sobre si esta acostumat a fer exercicis anaerobics
(defrule acostumat-anaero
	(tipus-habits $?th)
 	=>
	(if (member$ anaerobica $?th) 
	then
		(assert (costum-anaero (pregunta-unica-string "Estas acostumat als exercicis anaerobics? " poc molt)))
	else
		(assert (costum-anaero gens))
	)
)

;;; Obtenim els objectius d'exercicis que desitja l'usuari
(defrule determinar-objectius
	(not(visitat objectius))
	?u <- (usuari (edat ?e))
	=>
	(bind $?objectius (create$))
	(if (eq (str-compare ?e adolescent) 0)
	then
		(bind $?objectius (insert$ $?objectius 1 (pregunta-llista "Quins objectius vol assolir? " fer-esport flexibilitat rebaixar-pes)))
	else
		(bind $?objectius (insert$ $?objectius 1 (pregunta-llista "Quins objectius vol assolir? " fer-esport flexibilitat musculacio rebaixar-pes posar-se-en-forma)))
	)
	(bind $?tps (create$))
	(progn$ (?obj $?objectius)
		(assert (objectiu ?obj))
		(switch ?obj 
			(case flexibilitat
				then 
					(assert (tipusexer Estiraments))
					(bind $?tps (insert$ $?tps 1 Estiraments))
			)
			(case fer-esport
				then 
					(assert (tipusexer Activitats))
					(bind $?tps (insert$ $?tps 1 Activitats))
			)
			(case rebaixar-pes
				then 
					(assert (tipusexer Aerobic))
					(bind $?tps (insert$ $?tps 1 Aerobic))
			)
			(case musculacio
				then 
					(assert (tipusexer Anaerobic))
					(bind $?tps (insert$ $?tps 1 Anaerobic))
			)
			(case posar-se-en-forma
				then
					;;; Si es repeteixen tipus no hi ha cap problema ja que
					;;; significarà que vol més exercicis d'aquest tipus
					(bind $?tps (insert$ $?tps 1 Estiraments Activitats Aerobic Anaerobic))
					(assert (tipusexer Estiraments))
					(assert (tipusexer Aerobic))
					(assert (tipusexer Activitats))
					(assert (tipusexer Anaerobic))
			)
			(default (printout t "[Error switch]" crlf))
		)
	)
	(assert (visitat objectius))
	(assert (llista-tps $?tps))
)

;;; Obtenim els musculs que vol exercitar en cas de objectiu := musculacio
(defrule determinar-musculs
	(objectiu musculacio | posar-se-en-forma)
	=>
	(assert (musculs (pregunta-llista "Quins musculs vol exercitar? " abdominals biceps cames esquena pectorals )))
)

;;; Obtenim el temps diari disponible per a l'entrenament
(defrule determinar-disponibilitat
	?disp <- (tempsdisp (t_dil 0))
	=>
	(bind ?t (pregunta-unica "Quant de temps (en minuts) vol dedicar al programa d'exercicis? " 30 45 60 75 90 105 120))
	(assert (temps ?t))
	(modify ?disp (t_dil ?t)(t_dim ?t)(t_dix ?t)(t_dij ?t)(t_div ?t)(t_dis ?t))
)

(defrule a-restriccions-addicionals
	(declare (salience -1))
	=>
	(focus restriccions-addicionals)
)


;;;
;;; MODUL DE RESTRICCIONS ADDICIONALS
;;;

(defmodule restriccions-addicionals "Modul de restriccions addicionals"
	(import preguntes-determinar-usuari ?ALL)
	(export ?ALL)
)

;;; Restringim la dificultat dels exercicis aerobics segons la pressio de l'usuari
(defrule dificultat-pressio
	(usuari (pressio-min ?pmin) (pressio-max ?pmax))
	=>
	(if (or (eq ?pmin hiper) (eq ?pmax hiper))
	then 
		(assert (restringir-aero dificil))
	)
)

;;; Restringim la dificultat dels exercicis aerobics segons la frequencia de l'usuari
(defrule dificultat-frequencia
	(usuari (fc ?fc))
	=>
	(if (eq ?fc hiper)
	then 
		(assert (restringir-aero dificil))
	)
)

;;; Restringim la dificultat dels exercicis aerobics segons la constitucio de l'usuari
(defrule dificultat-constitucio
	(usuari (constitucio ?cons))
	=>
	(if (eq ?cons prim)
	then
		(assert (restringir-aero dificil))
	else
		(if (eq ?cons sobrepes)
		then 
			(assert (restringir-aero dificil))
		else
			(if (eq ?cons obes)
			then 
				(assert (restringir-aero normal))
				(assert (restringir-aero dificil))
			)
		)
	)
)

;;; Restringim la dificultat dels exercicis 
;;; aerobics i muscular-se segons l'edat de l'usuari
(defrule dificultat-edat
	(usuari (edat ?edat))
	=>
	(if (eq ?edat vell)
	then
		(assert (restringir-aero dificil))
	else
		(if  (eq ?edat adolescent)
		then
			(assert (musculacio no))
		)
	)
)

;;; Determinem el tipus d'exercicis que necessita
;;; l'usuari segons els seus problemes musculoesqueletics
(defrule dificultat-problemes
	(tipus-problemes $?probs)
	=>
	(progn$ (?p $?probs)
		(if (member$ ?p (create$ cervicals esquena))
		then 
			(if (eq (str-compare ?p esquena) 0)
			then
				(assert (boperesquena si))
			else
				(assert (boperesquena no))
			)
			(assert (peses no))
		else
			(assert (boperesquena no))
		)
	)
)

;;; Restringim els exercicis segons els seus habits
(defrule dificultat-habits
	(tipus-habits $?hab)
	(usuari (pressio-min ?pmin) (pressio-max ?pmax))
	=>
	(progn$ (?h ?hab)
		(if (eq (str-compare ?h cap) 0)
		then
			;;;(assert (restringir-exer dificil))
		else
			(if (eq (str-compare ?h aerobica) 0) 
			then
				;;; Si ja te restriccions de normal i dificil, no restringim dificultat moderada
				(if (not(and (eq ?pmin hiper) (eq ?pmax hiper)))
				then
					(assert (restringir-aero moderada))
				)
			)
		)
	)
)

;;; Restringim els exercicis anaerobics segons el
;;; seu nivell de pràctica amb exercicis anaerobics
(defrule dificultat-anaero
	(tipus-habits $?th)
	(costum-anaero ?costum)
	=>
	(if (member$ anaerobica $?th)
	then
		(if (eq (str-compare ?costum poc) 0)
		then 
			(assert (restringir-anaero moderada))
			(assert (restringir-anaero dificil))
		else
			(assert (restringir-anaero moderada))
			(assert (restringir-anaero normal))
		)
	else
		(assert (restringir-anaero normal))
		(assert (restringir-anaero dificil))
	)
)

(defrule a-seleccio-instancies
	(declare (salience -1))
	=>
	(focus seleccio-instancies)
)


;;;
;;; MODUL DE SELECCIÓ
;;;

(defmodule seleccio-instancies "Modul de seleccio d'instancies"
	(import restriccions-addicionals ?ALL)
	(export ?ALL)
)

;;; Eliminem les instancies d'exercici que no
;;; es corresponen en absolut amb l'usuari
(defrule filtrar-exercicis
	(restringir-exer ?rest)
	?exer <- (object (is-a Exercici) (dificultat ?rest))
	=>
	(unmake-instance ?exer)	
)

;;; Eliminem les instancies d'exercicis aerobics que no
;;; es corresponen en absolut amb l'usuari
(defrule filtrar-aerobics
	(restringir-aero ?rest)
	?exer <- (object (is-a Aerobic) (dificultat ?rest))
	=>
	(unmake-instance ?exer)	
)

;;; Eliminem les instancies d'exercicis anaerobics que no
;;; es corresponen en absolut amb l'usuari
(defrule filtrar-anaerobics
	(restringir-anaero ?rest)
	?exer <- (object (is-a Anaerobic) (dificultat ?rest))
	=>
	(unmake-instance ?exer)	
)

;;; Eliminem les instancies d'exercici que fan us de peses
(defrule filtrar-peses
	(peses no)
	?exer <- (object (is-a Exercici) (conpesas TRUE))
	=>
	(unmake-instance ?exer)
)

(defrule a-construccio-solucio
	(declare (salience -1))
	=>
	(focus construccio-solucio)
)


;;;
;;; MODUL DE CONSTRUCCIO SOLUCIO
;;;

(defmodule construccio-solucio "Modul de construccio de la solucio"
	(import seleccio-instancies ?ALL)
	(export ?ALL)
)

;;; Inicialitzem alguns fets necessaris per 
;;; començar a omplir l'horari
(defrule inicialitzar-tipus
	(declare (salience 13))
	?l <- (llista-tps $?tps)
	(not (visitat init))
	=>
	(bind ?tac (nth$ 1 $?tps))
	(if (and (eq (str-compare ?tac Anaerobic) 0) (eq (length$ $?tps) 1))
	then
		(assert (pur-muscul TRUE))
	else
		(bind $?tps (delete-member$ $?tps Anaerobic))
		(retract ?l)
		(assert (llista-tps ?tps))
		(bind ?ta (nth$ 1 $?tps))
		(assert (tipusactual ?ta))
	)
	(assert (visitat init))
) 

;;; Omplim 3 dies amb exercicis de musculacio
(defrule omplir-musculacio
	(declare (salience 11))
	?t <- (tempsdisp (t_dil ?t1)(t_dim ?t2)(t_dix ?t3)(t_dij ?t4)(t_div ?t5)(t_dis ?t6))
	?r <- (horari (dilluns $?d1)(dimarts $?d2)(dimecres $?d3)(dijous $?d4)(divendres $?d5)(dissabte $?d6))
	(objectiu musculacio | posar-se-en-forma)
	(llista-tps $?tipus-exer)
	(musculs $?musculs)
	(not (visitat musculacio))
	=>
		(bind $?abd (find-all-instances ((?inst Abdominals)) TRUE ))
		(bind $?bic (find-all-instances ((?inst Biceps)) TRUE ))
		(bind $?esq (find-all-instances ((?inst Esquena)) TRUE ))
		(bind $?cam (find-all-instances ((?inst Cames)) TRUE ))
		(bind $?pec (find-all-instances ((?inst Pectorals)) TRUE ))
		(bind ?sabd (length$ $?abd))
		(bind ?sbic (length$ $?bic))
		(bind ?sesq (length$ $?esq))
		(bind ?scam (length$ $?cam))
		(bind ?spec (length$ $?pec))
		
		;;; Generem dilluns
		(bind $?d1 (create$))
		;;; Generem dimecres
		(bind $?d3 (create$))
		;;; Generem divendres
		(bind $?d5 (create$))
		
		(progn$ (?m $?musculs)
			(switch ?m
				(case abdominals
					then 
						;;; Abdominals Dill
						(bind ?rand (random 1 ?sabd))
						(bind $?d1 (insert$ $?d1 1 (nth$ ?rand $?abd)))
						(bind ?rand (random 1 ?sabd))
						(bind $?d1 (insert$ $?d1 1 (nth$ ?rand $?abd)))
						;;; Abdominals Dim
						(bind ?rand (random 1 ?sabd))
						(bind $?d3 (insert$ $?d3 1 (nth$ ?rand $?abd)))
						(bind ?rand (random 1 ?sabd))
						(bind $?d3 (insert$ $?d3 1 (nth$ ?rand $?abd)))
				)
				(case biceps
					then
						;;; Biceps Dill
						(bind ?rand (random 1 ?sbic))
						(bind $?d1 (insert$ $?d1 1 (nth$ ?rand $?bic)))
						(bind ?rand (random 1 ?sbic))
						(bind $?d1 (insert$ $?d1 1 (nth$ ?rand $?bic)))
						;; Biceps Diss
						(bind ?rand (random 1 ?sbic))
						(bind $?d5 (insert$ $?d5 1 (nth$ ?rand $?bic)))
						(bind ?rand (random 1 ?sbic))
						(bind $?d5 (insert$ $?d5 1 (nth$ ?rand $?bic)))
				)
				(case esquena
					then				
						;;; Esquena Dill
						(bind ?rand (random 1 ?sesq))
						(bind $?d1 (insert$ $?d1 1 (nth$ ?rand $?esq)))
						(bind ?rand (random 1 ?sesq))
						(bind $?d1 (insert$ $?d1 1 (nth$ ?rand $?esq)))
						;;; Esquena Dix
						(bind ?rand (random 1 ?sesq))
						(bind $?d3 (insert$ $?d3 1 (nth$ ?rand $?esq)))
				)
				(case cames
					then
						;;; Cames Dix
						(bind ?rand (random 1 ?scam))
						(bind $?d3 (insert$ $?d3 1 (nth$ ?rand $?cam)))
						;;; Cames Diss
						(bind ?rand (random 1 ?scam))
						(bind $?d5 (insert$ $?d5 1 (nth$ ?rand $?cam)))
						(bind ?rand (random 1 ?scam))
						(bind $?d5 (insert$ $?d5 1 (nth$ ?rand $?cam)))
				)
				(case pectorals
					then
						;;; Pectorals Dix
						(bind ?rand (random 1 ?spec))
						(bind $?d3 (insert$ $?d3 1 (nth$ ?rand $?pec)))	
						(bind ?rand (random 1 ?spec))
						(bind $?d3 (insert$ $?d3 1 (nth$ ?rand $?pec)))
						;;; Pectorals Diss
						(bind ?rand (random 1 ?spec))
						(bind $?d5 (insert$ $?d5 1 (nth$ ?rand $?pec)))	
						(bind ?rand (random 1 ?spec))
						(bind $?d5 (insert$ $?d5 1 (nth$ ?rand $?pec)))
				)
				(default (printout t "[Error switch]" crlf))
			)
		)
		
		;;; Actualitzem horari
		(modify ?r (dilluns $?d1)(dimecres $?d3)(divendres $?d5))
		(assert (visitat musculacio))
)

;;; Omplim el dilluns amb exercicis
(defrule omplir-dilluns
	(declare (salience 9))
	(not (tipusexer Anaerobic))
	?t <- (tempsdisp (t_dil ?t1))
	?r <- (horari (dilluns $?d1))
	(not(visitat dilluns))
	?ta <- (tipusactual ?tipus)
	(llista-tps $?tipus-exer)
	(boperesquena ?n)
	=>
	(bind $?insts (find-all-instances ((?inst ?tipus)) TRUE ))
	
	;;; Omplim amb exercici bo per problemes d'esquena si es el cas
	(if (and (eq (str-compare ?n si) 0) (eq (str-compare ?tipus Activitats) 0))
		then
		(bind ?nat (find-instance ((?inst Activitats)) (eq ?inst:boperesquena TRUE)))
			(bind ?ins (nth$ 1 ?nat))
			(bind ?tn (send ?ins get-tiempo))
			(bind $?d1 (insert$ $?d1 1 (omple-dia ?tn ?nat)))
			(bind ?t1 (- ?t1 ?tn))
	)
	
	;;; Omplim el temps disponible amb exercicis
	(bind $?d1 (insert$ $?d1 1 (omple-dia ?t1 $?insts)))
	
	;;; Un cop omplert el dia actualitzem el tipus d'exercici pel proxim dia
	(bind ?size (length$ $?tipus-exer))
	(bind ?pos (member$ ?tipus $?tipus-exer))
	(bind ?pos (+ (mod ?pos ?size) 1))
	(bind ?aux (nth$ ?pos $?tipus-exer))
	(retract ?ta)
	(assert 
		(tipusactual ?aux)
		(visitat dilluns)
	)
	(modify ?r (dilluns $?d1))
)

;;; Omplim el dimarts amb exercicis
(defrule omplir-dimarts
	(declare (salience 8))
	?t <- (tempsdisp (t_dim ?t2))
	?r <- (horari (dimarts $?d2))
	(not(visitat dimarts))
	?ta <- (tipusactual ?tipus)
	(llista-tps $?tipus-exer)
	(boperesquena ?n)
	(not (pur-muscul TRUE))
	=>
	
	(bind $?insts (find-all-instances ((?inst ?tipus)) TRUE ))
	;;; Omplim amb exercici bo per problemes d'esquena si es el cas
	(if (and (eq (str-compare ?n si) 0) (eq (str-compare ?tipus Activitats) 0))
		then
			(bind ?nat (find-instance ((?inst Activitats)) (eq ?inst:boperesquena TRUE)))
			(bind ?ins (nth$ 1 ?nat))
			(bind ?tn (send ?ins get-tiempo))
			(bind $?d2 (insert$ $?d2 1 (omple-dia ?tn ?nat)))
			(bind ?t2 (- ?t2 ?tn))
	)
	;;; Omplim el temps disponible amb exercicis
	(bind $?d2 (insert$ $?d2 1 (omple-dia ?t2 $?insts)))
	
	;;; Un cop omplert el dia actualitzem el tipus d'exercici pel proxim dia
	(bind ?size (length$ $?tipus-exer))
	(bind ?pos (member$ ?tipus $?tipus-exer))
	(bind ?pos (+ (mod ?pos ?size) 1))
	(bind ?aux (nth$ ?pos $?tipus-exer))
	(retract ?ta)
	(assert 
		(tipusactual ?aux)
		(visitat dimarts)
	)
	;;; Actualitzem horari del dimarts
	(modify ?r (dimarts ?d2))
)

;;; Omplim el dimecres amb exercicis
(defrule omplir-dimecres
	(declare (salience 7))
	(not (objectiu musculacio))
	(not (tipusexer Anaerobic))
	?t <- (tempsdisp (t_dix ?t3))
	?r <- (horari (dimecres $?d3))
	(not(visitat dimecres))
	?ta <- (tipusactual ?tipus)
	(llista-tps $?tipus-exer)
	(boperesquena ?n)
	=>
	(bind $?insts (find-all-instances ((?inst ?tipus)) TRUE ))
	
	;;; Omplim amb exercici bo per problemes d'esquena si es el cas
	(if (and (eq (str-compare ?n si) 0) (eq (str-compare ?tipus Activitats) 0))
		then
			(bind ?nat (find-instance ((?inst Activitats)) (eq ?inst:boperesquena TRUE)))
			(bind ?ins (nth$ 1 ?nat))
			(bind ?tn (send ?ins get-tiempo))
			(bind $?d3 (insert$ $?d3 1 (omple-dia ?tn ?nat)))
			(bind ?t3 (- ?t3 ?tn))
	)
	
	;;; Omplim el temps disponible amb exercicis
	(bind $?d3 (insert$ $?d3 1 (omple-dia ?t3 $?insts)))
	
	;;; Un cop omplert el dia actualitzem el tipus d'exercici pel proxim dia
	(bind ?size (length$ $?tipus-exer))
	(bind ?pos (member$ ?tipus $?tipus-exer))
	(bind ?pos (+ (mod ?pos ?size) 1))
	(bind ?aux (nth$ ?pos $?tipus-exer))
	(retract ?ta)
	(assert 
		(tipusactual ?aux)
		(visitat dimecres)
	)
	(modify ?r (dimecres $?d3))
)

;;; Omplim el dijous amb exercicis
(defrule omplir-dijous
	(declare (salience 6))
	?t <- (tempsdisp (t_dij ?t4))
	?r <- (horari (dijous $?d4))
	(not(visitat dijous))
	?ta <- (tipusactual ?tipus)
	(llista-tps $?tipus-exer)
	(boperesquena ?n)
	(not (pur-muscul TRUE))
	=>
	(bind $?insts (find-all-instances ((?inst ?tipus)) TRUE ))
	
	;;; Omplim amb exercici favorable per problemes d'esquena si es el cas
	(if (and (eq (str-compare ?n si) 0) (eq (str-compare ?tipus Activitats) 0))
		then
			(bind ?nat (find-instance ((?inst Activitats)) (eq ?inst:boperesquena TRUE)))
			(bind ?ins (nth$ 1 ?nat))
			(bind ?tn (send ?ins get-tiempo))
			(bind $?d4 (insert$ $?d4 1 (omple-dia ?tn ?nat)))
			(bind ?t4 (- ?t4 ?tn))
	)
	
	;;; Omplim el temps disponible amb exercicis
	(bind $?d4 (insert$ $?d4 1 (omple-dia ?t4 $?insts)))
	
	;;; Un cop omplert el dia actualitzem el tipus d'exercici pel proxim dia
	(bind ?size (length$ $?tipus-exer))
	(bind ?pos (member$ ?tipus $?tipus-exer))
	(bind ?pos (+ (mod ?pos ?size) 1))
	(bind ?aux (nth$ ?pos $?tipus-exer))
	(retract ?ta)
	(assert 
		(tipusactual ?aux)
		(visitat dijous)
	)
	(modify ?r (dijous $?d4))
)

;;; Omplim el divendres amb exercicis
(defrule omplir-divendres
	(declare (salience 5))
	(not (tipusexer Anaerobic))
	?t <- (tempsdisp (t_div ?t5))
	?r <- (horari (divendres $?d5))
	(not(visitat divendres))
	?ta <- (tipusactual ?tipus)
	(llista-tps $?tipus-exer)
	(boperesquena ?n)
	=>
	(bind $?insts (find-all-instances ((?inst ?tipus)) TRUE ))
	
	;;; Omplim amb exercici bo per problemes d'esquena si es el cas
	(if (and (eq (str-compare ?n si) 0) (eq (str-compare ?tipus Activitats) 0))
		then
		(bind ?nat (find-instance ((?inst Activitats)) (eq ?inst:boperesquena TRUE)))
			(bind ?ins (nth$ 1 ?nat))
			(bind ?tn (send ?ins get-tiempo))
			(bind $?d5 (insert$ $?d5 1 (omple-dia ?tn ?nat)))
			(bind ?t5 (- ?t5 ?tn))
	)
	
	;;; Omplim el temps disponible amb exercicis
	(bind $?d5 (insert$ $?d5 1 (omple-dia ?t5 $?insts)))
	
	;;; Un cop omplert el dia actualitzem el tipus d'exercici pel proxim dia
	(bind ?size (length$ $?tipus-exer))
	(bind ?pos (member$ ?tipus $?tipus-exer))
	(bind ?pos (+ (mod ?pos ?size) 1))
	(bind ?aux (nth$ ?pos $?tipus-exer))
	(retract ?ta)
	(assert 
		(tipusactual ?aux)
		(visitat divendres)
	)
	(modify ?r (divendres $?d5))
)

;;; Omplim el dissabte amb exercicis
(defrule omplir-dissabte
	(declare (salience 4))
	?t <- (tempsdisp (t_dis ?t6))
	?r <- (horari (dissabte $?d6))
	(not(visitat dissabte))
	?ta <- (tipusactual ?tipus)
	(llista-tps $?tipus-exer)	
	(boperesquena ?n)
	(not (pur-muscul TRUE))
	=>
	(bind $?insts (find-all-instances ((?inst ?tipus)) TRUE ))
	
	;;; Omplim amb exercici bo per problemes d'esquena si es el cas
	(if (and (eq (str-compare ?n si) 0) (eq (str-compare ?tipus Activitats) 0))
		then
			(bind ?nat (find-instance ((?inst Activitats)) (eq ?inst:boperesquena TRUE)))
			(bind ?ins (nth$ 1 ?nat))
			(bind ?tn (send ?ins get-tiempo))
			(bind $?d6 (insert$ $?d6 1 (omple-dia ?tn ?nat)))
			(bind ?t6 (- ?t6 ?tn))
	)
	
	;;; Omplim el temps disponible amb exercicis
	(bind $?d6 (insert$ $?d6 1 (omple-dia ?t6 $?insts)))
	
	;;; Un cop omplert el dia actualitzem el tipus d'exercici pel proxim dia
	(bind ?size (length$ $?tipus-exer))
	(bind ?pos (member$ ?tipus $?tipus-exer))
	(bind ?pos (+ (mod ?pos ?size) 1))
	(bind ?aux (nth$ ?pos $?tipus-exer))
	(retract ?ta)
	(assert 
		(tipusactual ?aux)
		(visitat dissabte)
	)
	(modify ?r (dissabte $?d6))
)

(defrule a-impressio-solucio
	(declare (salience -1))
	=>
	(focus impressio-solucio)
)

;;;
;;; MODUL DE IMPRESSIO DE LA SOLUCIO
;;;

(defmodule impressio-solucio "Modul d'impressio' de la solucio"
	(import construccio-solucio ?ALL)
	(export ?ALL)
)

;;; Mostra el titol del programa d'entrenament resultant
(defrule titol-horari
	(declare (salience 13))
	=>
	(printout t crlf)
	(printout t "+------------------------------------------------+" crlf)
	(printout t "|                                                |" crlf)
	(printout t "|   P R O G R A M A  D ' E N T R E N A M E N T   |" crlf)
	(printout t "|                                                |" crlf)
)

;;; Mostra la programació d'exercicis de dilluns
(defrule horari-dilluns
	(declare (salience 12))
	(horari (dilluns $?d1)(dimarts $?d2)(dimecres $?d3)(dijous $?d4)(divendres $?d5)(dissabte $?d6))
	=>
	(escriu-titol Dilluns)
	(escriu-horari $?d1)
)

;;; Mostra la programació d'exercicis de dimarts
(defrule horari-dimarts
	(declare (salience 10))
	(horari (dilluns $?d1)(dimarts $?d2)(dimecres $?d3)(dijous $?d4)(divendres $?d5)(dissabte $?d6))
	=>
	(escriu-titol Dimarts)
	(escriu-horari $?d2)	
)

;;; Mostra la programació d'exercicis de dimecres
(defrule horari-dimecres
	(declare (salience 8))
	(horari (dilluns $?d1)(dimarts $?d2)(dimecres $?d3)(dijous $?d4)(divendres $?d5)(dissabte $?d6))
	=>
	(escriu-titol Dimecres)
	(escriu-horari $?d3)
)

;;; Mostra la programació d'exercicis de dijous
(defrule horari-dijous
	(declare (salience 6))
	(horari (dilluns $?d1)(dimarts $?d2)(dimecres $?d3)(dijous $?d4)(divendres $?d5)(dissabte $?d6))
	=>
	(escriu-titol Dijous)
	(escriu-horari $?d4)
)

;;; Mostra la programació d'exercicis de divendres
(defrule horari-divendres
	(declare (salience 4))
	(horari (dilluns $?d1)(dimarts $?d2)(dimecres $?d3)(dijous $?d4)(divendres $?d5)(dissabte $?d6))
	=>
	(escriu-titol Divendres)
	(escriu-horari $?d5)
)

;;; Mostra la programació d'exercicis de dissabte
(defrule horari-dissabte
	(declare (salience 2))
	(horari (dilluns $?d1)(dimarts $?d2)(dimecres $?d3)(dijous $?d4)(divendres $?d5)(dissabte $?d6))
	=>
	(escriu-titol Dissabte)
	(escriu-horari $?d6)	
)

;;; Imprimeix l'acabament del marc de la programacio d'exercicis
(defrule final
	(declare (salience -1))
	=>
	(printout t "+------------------------------------------------------------------------------------+" crlf)
)
