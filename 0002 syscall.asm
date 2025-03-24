; Per eseguire una chiamata al sistema si usa la seguente sintassi
mov eax syscall_num
; Segue una tabella di codici syscall per le chiamate principale
; 1 EXIT Termina il programma
; 2 FORK Crea un nuovo processo
; 3 READ Legge dati da un file o da stdin
; 4 WRITE Scrive dati su un file o su stdout
; 5 OPEN Apre un file
; 6 CLOSE Chiude un file
; 11 EXECVE Esegue un programma
; 20 GETPID Ottiene il PID del processo corrente
; 37 KILL Invia un segnale a un processo
; 69 SBRK Modifica la quantità di memoria allocata
;
; Cos'è stdin?
; Standard Input (Input Standard): È il flusso predefinito da cui un programma legge i dati forniti dall'utente o da un file.
; Di solito, stdin è associato alla tastiera. Quando un programma richiede un input, come ad esempio inserire un nome o un numero, lo legge tramite stdin.
; In Assembly, questo corrisponde a una chiamata a sistema come read (syscall 3), dove il file descriptor di stdin è 0.
;
; Cos'è stdout?
; Standard Output (Output Standard): È il flusso predefinito verso cui un programma scrive i dati per mostrarli all'utente.
; Normalmente, stdout è collegato allo schermo. Quando un programma stampa messaggi o risultati, li invia a stdout.
; In Assembly, si utilizza la syscall write (syscall 4), dove il file descriptor di stdout è 1.
;
; Tabella riassuntiva:
; Nome - Descrizione - File Descriptor
; stdin - Flusso per leggere i dati (input) - 0
; stdout - Flusso per scrivere i dati (output) - 1
