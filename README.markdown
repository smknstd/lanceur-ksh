## Lanceur Korn Shell

Un script rudimentaire d’ordonnancement de tâches en parallèle, écrit aux alentour de 2007 sur mon premier projet ETL probablement sur AIX.

### Principe

Le principe est simpliste, le script décompose une liste de tâches en [round robin](http://en.wikipedia.org/wiki/Round-robin_scheduling) dans plusieurs sous-listes. Ces listes sont ensuite exécutées en // (dans des processus séparés).

Le script était adapté a un grand nombre de tâches courtes. Il est une alternative aux solutions habituelles impliquant un timer.

### Ressources
1. **[counting semaphore](http://www.gnu.org/software/parallel/parallel_tutorial.html#counting_semaphore): une fonctionnalité du fabuleux outil du danois Ole Tange
2. **une [page](http://prll.sourceforge.net/shell_parallel.html) synthétique et très interessante sur le sujet de la parallélisation en shell
