#!/usr/bin/ksh
#set -x

lance_traite(){
for val in ${tab[${cpt}]}
do
	# execution
	execute
	if (( $? > 0 )) 
	then
		exit 1
	fi
done
}

# liste des tables separées par un espace
export LISTE_TABLES="TABLE1 TABLE2 TABLE3 TABLE4"

# degre de //
export PARALL=2

integer cpt=0

# Repartition des tables dans différentes listes 
for val in $LISTE_TABLES
do
	tab[${cpt}]="${tab[${cpt}]} ${val}"
	(( cpt += 1 ))
	if (( cpt == ${PARALL} ))
	then
		cpt=0
	fi
done

cpt=0

# Lancement des traitements en //
while (( cpt < ${PARALL} ))
do
	lance_traite &
	(( cpt = cpt + 1 ))
done

wait

# Fin du traitement.
exit
