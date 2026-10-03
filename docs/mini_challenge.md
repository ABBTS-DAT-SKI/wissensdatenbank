# Mini-Challenge

## Auftrag

Arbeitet in einer Gruppe von drei Personen. Jede Gruppe erhält ein Datenpaket einer Heizgruppe. Ihr untersucht 
unterschiedliche Heizgruppen, beantwortet aber dieselbe betriebliche Frage:

> **Zeigt diese Heizgruppe eine konsistente Nachtabsenkung und gibt es
> Zeiträume, die das Facility Management prüfen sollte?**

Gebt pro Gruppe ein ausführbares Jupyter Notebook ab. Das Notebook ist zugleich
der Bericht; ein separates PDF oder eine Präsentation sind nicht erforderlich.

Ihr erhaltet drei zusammengehörende Rohdatenexporte:

- `supply_temperature.csv`: Vorlauftemperatur in °C
- `return_temperature.csv`: Rücklauftemperatur in °C
- `outside_temperature.csv`: Aussentemperatur in °C

### Datenpaket

- Zeitraum: 1. Oktober 2025 bis 30. September 2026.
- `_time` enthält die Zeitstempel in UTC, `_value` den Messwert. Vorlauf und
  Rücklauf werden ungefähr jede Minute erfasst, die Aussentemperatur alle zehn
  Minuten.
- Die Heizung läuft nach Schweizer Ortszeit. 
- Vorlauf- und Rücklauftemperatur sind synthetisch. Sie stammen aus einer
  Simulation, die mit realen Betriebsmustern und realem Sensorverhalten
  gemessener Heizgruppen kalibriert wurde.
- Die Aussentemperatur besteht aus realen Messungen einer
  SwissMetNet-Station (Quelle: MeteoSwiss, CC BY 4.0). Einzelne Werte können fehlen.
- Sensorlücken sind enthalten und müssen in der Analyse sichtbar bleiben.

| Datenpaket | Gebäude | Wetterstation |
| --- | --- | --- |
| [heating_group_01.zip](downloads/mini_challenge/heating_group_01.zip) | Wohngebäude | Basel / Binningen |
| [heating_group_02.zip](downloads/mini_challenge/heating_group_02.zip) | Schulhaus | Bern / Zollikofen |
| [heating_group_03.zip](downloads/mini_challenge/heating_group_03.zip) | Bürogebäude | Buchs / Aarau |
| [heating_group_04.zip](downloads/mini_challenge/heating_group_04.zip) | Wohngebäude | Chur |
| [heating_group_05.zip](downloads/mini_challenge/heating_group_05.zip) | Wohngebäude | Genève / Cointrin |
| [heating_group_06.zip](downloads/mini_challenge/heating_group_06.zip) | Pflegeheim | Luzern |
| [heating_group_07.zip](downloads/mini_challenge/heating_group_07.zip) | Schulhaus | St. Gallen |

## Untersuchung

Beantwortet die folgenden Fragen in eurem Notebook.

### 1. Welches Betriebsmuster zeigen die Messungen?

- Führt die Rohdateien selbst in einem Analyse-DataFrame zusammen.
- Prüft Zeitstempel, Duplikate, fehlende Werte, Messintervalle, Lücken und
  unplausible Werte.
- Begründet eure Bereinigungsentscheidungen. Füllt eine echte Sensorlücke nicht
  unbemerkt auf.
- Erstellt einen Plot einer repräsentativen Woche mit Vorlauf, Rücklauf und
  Aussentemperatur.
- Definiert eine nachvollziehbare Regel für mögliche Nachtabsenkungsphasen.
- Beschreibt deren Zeitpunkt, Dauer und Konsistenz.

### 2. Wie gut erklärt die Aussentemperatur die Vorlauftemperatur?

- Verwendet `outside_temperature` als Merkmal und `supply_temperature` als
  Zielvariable.
- Trainiert eine lineare Regression mit einem 80/20-Train-Test-Split.
- Visualisiert die Testmessungen und die Regressionsgerade.
- Gebt Test-MAE und Test-MSE an.
- Erstellt und interpretiert den Residuenplot.
- Erklärt, was das Modell über die Heizkurve aussagt, sowie mindestens eine
  Einschränkung. Eine Heizgruppe kann mehrere Betriebszustände haben; ein
  lineares Modell beschreibt deshalb möglicherweise nicht jede Messung genau.

### 3. Welche Zeiträume sollte das Facility Management prüfen?

- Untersucht drei Zeiträume, die vom üblichen Absenkmuster abweichen.
- Belegt jeden Kandidaten mit einem detaillierten Zeitreihenplot.
- Formuliert einen nächsten Schritt für das Facility Management,
  beispielsweise die Prüfung eines Zeitprogramms, Sollwerts, manuellen
  Eingriffs, Ventils, Sensors oder BMS-Trends. Gibt es keine nächsten Schritte, muss dies gut begründet werden.
- Eine Sensorlücke ist ein Befund zur Datenqualität und kein Beweis für einen
  Anlagenfehler.


## Redlichkeit

Jede Gruppe erarbeitet ihr Notebook selbstständig.

**Erlaubt** ist der Austausch mit anderen Gruppen nur auf konzeptioneller Ebene, also mündlich und ohne Unterlagen. Beispiel: «Wir haben die Absenkphasen über einen Vergleich mit der Vorlauftemperatur der Vortage erkannt.»

**Nicht erlaubt** ist es,

- Code, Notebooks, Plots oder Textpassagen einer anderen Gruppe zu übernehmen,
- eigenen Code, eigene Plots, Notebooks oder Textpassagen einer anderen Gruppe zu zeigen oder weiterzugeben, auch nicht auf dem Bildschirm, per Foto oder per Chat.

Ein Verstoss gilt als Unredlichkeit gemäss Punkt 1.3 und wird mit der Note 1 bewertet. Das gilt für jede Gruppe, die gegen diese Regeln verstösst: Wer Code oder Plots zeigt oder weitergibt, verstösst bereits damit gegen die Regeln, unabhängig davon, ob die andere Gruppe etwas übernimmt.

Das Notebook enthält am Ende eine Eigenständigkeitserklärung, die alle Gruppenmitglieder mit Namen bestätigen:

> Wir bestätigen, dass wir dieses Notebook selbstständig erarbeitet haben. Wir haben keinen Code, keine Plots und keine Textpassagen anderer Gruppen übernommen und keine eigenen Arbeitsergebnisse an andere Gruppen gezeigt oder weitergegeben.

## Abgabe

Gebt bis zum im Unterricht kommunizierten Termin ein ausführbares Notebook pro
Gruppe ab. Es muss mit eurem zugeteilten Datenpaket von oben nach unten laufen
und kurze schriftliche Schlussfolgerungen zu allen drei Fragen enthalten.

### 1. Datenbereinigung (40 %)

| Punkte | Beschreibung |
| --- | --- |
| **25-40** | Die Rohdateien werden in einem Analyse-DataFrame zusammengeführt. Die Bereinigung ist systematisch und begründet; sie berücksichtigt relevante fehlende Werte, Lücken, Duplikate und Inkonsistenzen. |
| **15-24** | Die Bereinigung ist grösstenteils vollständig, enthält aber kleinere Lücken oder schwache Begründungen. |
| **5-14** | Die Bereinigung bleibt oberflächlich, wichtige Probleme werden nicht behandelt. |
| **0** | Es wird keine ausreichende Bereinigung gezeigt. |

### 2. Datenanalyse und Visualisierung (20 %)

| Punkte | Beschreibung |
| --- | --- |
| **15-20** | Die Analyse verwendet klare, aussagekräftige Visualisierungen für Betriebsmuster, mögliche Absenkphasen und auffällige Zeiträume. Die Schlussfolgerungen sind durch Belege gestützt. |
| **10-14** | Die Analyse ist grösstenteils schlüssig, aber ein wichtiges Muster, eine Auffälligkeit oder eine stützende Visualisierung fehlt. |
| **5-9** | Die Analyse bleibt oberflächlich oder die Visualisierungen stützen die Schlussfolgerungen nicht. |
| **0-4** | Es wird keine aussagekräftige Analyse oder Visualisierung gezeigt. |

### 3. Modellierung und Interpretation (20 %)

| Punkte | Beschreibung |
| --- | --- |
| **15-20** | Eine lineare Regression zwischen Aussen- und Vorlauftemperatur wird korrekt trainiert und getestet. Die Gruppe zeigt Modell, Test-MAE/MSE, Residuen und eine klare gebäudephysikalische Interpretation mit Einschränkungen. |
| **10-14** | Das Modell ist grösstenteils korrekt, aber die Bewertung oder Interpretation ist unvollständig. |
| **5-9** | Das Modell ist ungeeignet, falsch bewertet oder schwach interpretiert. |
| **0-4** | Es wird kein verwendbares Modell gezeigt. |

### 4. Kommunikation und Reproduzierbarkeit des Notebooks (20 %)

| Punkte | Beschreibung |
| --- | --- |
| **15-20** | Das Notebook ist strukturiert, ausführbar und prägnant. Entscheidungen, Analyse und die abschliessende Empfehlung für das Facility Management sind nachvollziehbar und präzise. Die Redlichkeitserklärung ist beigefügt. |
| **10-14** | Das Notebook ist grösstenteils verständlich, aber wichtige Erklärungen oder Struktur fehlen. |
| **5-9** | Das Notebook weist erhebliche strukturelle oder dokumentarische Lücken auf. |
| **0-4** | Das Notebook ist unvollständig oder nicht nachvollziehbar. Die Redlichkeitserklärung fehlt. |
