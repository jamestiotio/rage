# Copyright 2020 Jack Grigg
#
# Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
# http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
# <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
# option. This file may not be copied, modified, or distributed
# except according to those terms.

### Localization for strings in the rage CLI tools

-age = age
-age-plugin- = age-plugin-
-rage = rage

## CLI flags

-flag-armor = -a/--armor
-flag-decrypt = -d/--decrypt
-flag-encrypt = -e/--encrypt
-flag-identity = -i/--identity
-flag-output = -o/--output
-flag-recipient = -r/--recipient
-flag-recipients-file = -R/--recipients-file
-flag-passphrase = -p/--passphrase
-flag-plugin-name = -j
-flag-max-work-factor = --max-work-factor
-flag-unstable = --features unstable

## Usage

usage-header = Usage

recipient = RECIPIENT
recipients-file = PATH
identity = IDENTITY
plugin-name = PLUGIN-NAME
input = INPUT
output = OUTPUT

rage-after-help-content =
    {input} ha come valore predefinito lo standard input, e {output} ha come
    valore predefinito lo standard output.

    {recipient} può essere:
    - Una chiave pubblica {-age}, come generata da {$keygen_name} ({$example_age_pubkey}).
    - Una chiave pubblica SSH ({$example_ssh_pubkey}).

    {recipients-file} è il percorso ad un file contenente dei destinatari {-age},
    uno per riga (ignorando i commenti che iniziano con "#" e le righe vuote).

    {identity} è il percorso ad un file contenente identità {-age}, una per
    riga (ignorando i commenti che iniziano con "#" e le righe vuote), o ad un
    file contenente una chiave SSH.
    I file di identità possono essere cifrati con {-age} e una passphrase.
    Possono essere fornite più identità, quelle inutilizzate verranno ignorate.

rage-after-help-example =
    Esempio:
    {"  "}{$example_a}
    {"  "}{tty-pubkey}: {$example_a_output}
    {"  "}{$example_b}
    {"  "}{$example_c}

## Formatting

warning-msg = Attenzione: {$warning}

## Keygen messages

tty-pubkey = Chiave pubblica
identity-file-created = creato
identity-file-pubkey = chiave pubblica

## Encryption messages

autogenerated-passphrase = Utilizzo di una passphrase generata automaticamente:
type-passphrase = Inserisci la passphrase
prompt-passphrase = Passphrase

warn-double-encrypting = Sta venendo cifrato un file già cifrato

## General errors

err-failed-to-open-output = Impossibile aprire l'output: {$err}
err-failed-to-write-output = Impossibile scrivere sull'output: {$err}
err-identity-ambiguous = {-flag-identity} richiede esplicitamente {-flag-encrypt} o {-flag-decrypt}.
err-mixed-encrypt-decrypt = {-flag-encrypt} non può essere usato assieme a {-flag-decrypt}.
err-passphrase-timed-out = Tempo di attesa per l'inserimento della passphrase scaduto.
err-same-input-and-output = L'input e l'output sono lo stesso file: '{$filename}'.

err-ux-A = Qualcosa è andato storto? Un errore potrebbe essere più chiaro?
err-ux-B = Faccelo sapere
# Put (len(A) - len(B) - 32) spaces here.
err-ux-C = {"                 "}

## Encryption errors

err-enc-broken-stdout = Impossibile scrivere sullo standard output: {$err}
rec-enc-broken-stdout = Stai usando una pipe verso un programma che non sta leggendo dallo standard input?

err-enc-broken-file = Impossibile scrivere sul file: {$err}

err-enc-missing-recipients = Destinatari mancanti.
rec-enc-missing-recipients = Hai dimenticato di specificare {-flag-recipient}?

err-enc-mixed-identity-passphrase = {-flag-identity} non può essere usato assieme a {-flag-passphrase}.
err-enc-mixed-recipient-passphrase = {-flag-recipient} non può essere usato assieme a {-flag-passphrase}.
err-enc-mixed-recipients-file-passphrase = {-flag-recipients-file} non può essere usato assieme a {-flag-passphrase}.
err-enc-passphrase-without-file = Il file da cifrare deve essere passato come argomento quando si usa {-flag-passphrase}.

err-enc-plugin-name-flag = {-flag-plugin-name} non può essere usato assieme a {-flag-encrypt}.

## Decryption errors

err-detected-powershell-corruption = Sembra che questo file sia stato corrotto dalla redirezione in PowerShell.
rec-detected-powershell-corruption = Usa {-flag-output} o {-flag-armor} per cifrare file in PowerShell.

rec-dec-excessive-work = Per decifrare, riprova usando {-flag-max-work-factor} {$wf}

err-dec-armor-flag = {-flag-armor} non può essere usato assieme a {-flag-decrypt}.
rec-dec-armor-flag = Nota che i file armored vengono rilevati automaticamente.

err-dec-missing-identities = Identità mancanti.
rec-dec-missing-identities = Hai dimenticato di specificare {-flag-identity}?

err-dec-mixed-identity-passphrase = {-flag-identity} non può essere usato con file cifrati con una passphrase.

err-mixed-identity-and-plugin-name = {-flag-identity} non può essere usato assieme a {-flag-plugin-name}.

err-dec-passphrase-flag = {-flag-passphrase} non può essere usato assieme a {-flag-decrypt}.
rec-dec-passphrase-flag = Nota che i file cifrati con una passphrase vengono rilevati automaticamente.

err-dec-passphrase-without-file-win =
    Questo file richiede una passphrase, e su Windows il
    file da decifrare deve essere passato come argomento
    posizionale quando si decifra con la passphrase.

err-dec-recipient-flag = {-flag-recipient} non può essere usato assieme a {-flag-decrypt}.
err-dec-recipients-file-flag = {-flag-recipients-file} non può essere usato assieme a {-flag-decrypt}.
rec-dec-recipient-flag = Intendevi usare {-flag-identity} per specificare una chiave privata?

## rage-mount strings

-flag-mnt-types = -t/--types

info-decrypting = Decifrando {$filename}
info-mounting-as-fuse = Montando come filesystem FUSE

err-mnt-missing-filename = Nome del file mancante.
err-mnt-missing-mountpoint = Punto di montaggio mancante.
err-mnt-missing-types = {-flag-mnt-types} mancante.
err-mnt-unknown-type = Tipo di filesystem sconosciuto "{$fs_type}"

## Unstable features

test-unstable = Per testare questo esegui la build di {-rage} con {-flag-unstable}.
