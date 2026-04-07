# Mini-Challenge  
In dieser Mini-Challenge kannst du dein Wissen anwenden, um reale Sensordaten zu untersuchen und wichtige Zusammenhänge zwischen Variablen zu modellieren.

Ziel ist es, einen Datensatz auszuwählen, diesen gründlich zu bereinigen, die Datenanalyse durchzuführen und anschliessend mithilfe eines ML-Modells eine Vorhersage oder Beziehung zwischen zwei Variablen zu quantifizieren und zu visualisieren. Der Fokus liegt auf der praktischen Umsetzung des gelernten Stoffes und der kritischen Auseinandersetzung mit den Daten.

## Vorgehen  
Wähle einen geeigneten Datensatz aus und stimme ihn spätestens im Check-in kurz mit dem Dozenten ab. Siehe auch den [Abschnitt "Schnellcheck vor dem Check-in"](mini_challenge_datensatzbeispiele.md#schnellcheck-vor-dem-check-in) im Datensatzbeispiel-Dokument.

Die ausführlichen Hinweise zur Datenauswahl findest du hier:

- [Datensatzbeispiele für die Mini-Challenge](mini_challenge_datensatzbeispiele.md)

Kurz zusammengefasst sollte dein Datensatz:

- aus realen Sensor- oder Gebäudeleitsystemdaten bestehen
- aus mindestens zwei zusammengehörigen Dateien bestehen, die du selbst zu einem gemeinsamen DataFrame zusammenführst
- eine Zeitvariable, genügend Beobachtungen, mehrere sinnvolle Variablen und mindestens eine kontinuierliche Messvariable enthalten
- eine klare Fragestellung und ein nachvollziehbares Analyseziel ermöglichen

Führe die ausgewählten Dateien zuerst zu einem gemeinsamen DataFrame zusammen. Bereinige die Daten danach gründlich, indem du unvollständige, fehlerhafte oder inkonsistente Werte behandelst. Dokumentiere nachvollziehbar, wie du fehlende Werte, Inkonsistenzen und Ausreisser bearbeitet hast.

Untersuche den Datensatz explorativ und beschreibe auffällige Muster, Anomalien oder fehlende Werte. Erstelle Visualisierungen, die dir helfen, die Daten besser zu verstehen.

Identifiziere für die Modellierung mindestens zwei Variablen, davon mindestens eine kontinuierliche Messvariable. Wähle ein geeignetes ML-Modell, um ihre Beziehung zu beschreiben. Eine lineare Regression eignet sich beispielsweise gut, um Zusammenhänge zwischen zwei kontinuierlichen Variablen zu visualisieren. Bei einem Datensatz mit Zeitreihencharakter kann auch die Zeitvariable zusammen mit einer Messvariable sinnvoll modelliert werden. Begründe die Wahl deines Modells und interpretiere, was die Modellierung über die Beziehung der Variablen aussagt.

> [!WARNING]  
> Dies ist eine Einzelarbeit. Besprich die genauen Auftragsdetails jedoch im Unterricht, damit deine Herangehensweise sinnvoll bleibt. Wähle eine Fragestellung, die eine ausgewogene Balance zwischen Herausforderung und Machbarkeit bietet.

> [!TIP]  
> Die Nutzung von ChatGPT oder anderen KI-Tools ist erlaubt und für Wissensfragen sogar ausdrücklich empfohlen. Achte aber darauf, dass du verstehst, was gemacht wird und warum bestimmte Entscheidungen getroffen werden. In der Abschlussprüfung können dazu Fragen gestellt werden.

## Abgabe  
Die Ergebnisse dokumentierst du in einem Bericht (als PDF), der maximal 8 Seiten umfasst (ohne Titelblatt, Inhaltsverzeichnis oder Ähnliches). Der Bericht sollte eine klare Struktur haben und die folgenden Punkte abdecken:  

- Beschreibung des Datensatzes und der Zielsetzung  
- Vorgehen bei der Datenanalyse und -bereinigung  
- Beschreibung der Modellierung und Interpretation der Ergebnisse  

Gib zusätzlich den Code als ZIP oder Notebook ab.

Die Abgabe des Berichts und Code erfolgt bis spätestens am Sonntag nach der Prüfung am 07.06.2026.

### Check-In

Um sicherzustellen, dass du auf dem richtigen Weg bist, gib bis Ende Semesterwoche 5 auf Teams das Check-in dieser Mini-Challenge ab. Beschreibe dort in zwei bis drei Sätzen kurz, welchen Datensatz du verwenden willst und welches Analyseziel du verfolgst. So lässt sich früh prüfen, ob der Aufwand passt und ob sich der Datensatz für die Mini-Challenge eignet.

Wenn du schon früher beginnen willst, kannst du selbstverständlich auch eine E-Mail schreiben. 

## Bewertungsraster

### 1. **Datenauswahl und Zieldefinition (10%)**

| Punktebereich   | Beschreibung                                                                                                                            |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| **5–10 Punkte** | Der Datensatz ist gut gewählt und passt hervorragend zur Zielsetzung der Aufgabe. Er besteht aus realen Sensor- oder Gebäudeleitsystemdaten, setzt sich aus mindestens 2 zusammengehörigen Dateien zusammen und hat eine klare Zeitvariable. Das Ziel der Analyse ist klar formuliert. |
| **3–4 Punkte**  | Der Datensatz ist grösstenteils geeignet, aber mindestens eine Anforderung ist nur teilweise erfüllt oder es gibt kleinere Unsicherheiten bei der Zieldefinition. |
| **1–2 Punkte**  | Der Datensatz passt nur teilweise zur Aufgabe, zum Beispiel wegen fehlendem Sensorbezug, fehlender Zeitvariable, zu wenig Struktur oder unklarer Zieldefinition. |
| **0 Punkte**    | Kein geeigneter Datensatz ausgewählt oder das Ziel ist nicht definiert.                                                                 |

### 2. **Datenbereinigung (30%)**

| Punktebereich    | Beschreibung                                                                                                                                                               |
| ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **20–30 Punkte** | Die Daten wurden zu einem DataFrame zusammengeführt und gründlich/systematisch bereinigt. Alle relevanten Probleme (fehlende Werte, Inkonsistenzen, Ausreisser) wurden angemessen adressiert. |
| **10–19 Punkte** | Die Datenbereinigung wurde grösstenteils durchgeführt, jedoch gibt es kleinere Mängel.                                                                                     |
| **5–9 Punkte**   | Die Datenbereinigung ist oberflächlich und viele Probleme wurden nicht adressiert.                                                                                         |
| **0 Punkte**     | Es wurde keine oder eine unzureichende Datenbereinigung durchgeführt.                                                                                                      |

### 3. **Datenanalyse und Visualisierung (20%)**

| Punktebereich    | Beschreibung                                                                                                                                                     |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **15–20 Punkte** | Die explorative Datenanalyse ist fundiert und umfassend. Alle wichtigen Aspekte (Muster, Anomalien) des Datensatzes wurden untersucht und aussagekräftige Visualisierungen erstellt. |
| **10–14 Punkte** | Die Datenanalyse ist grösstenteils fundiert, aber einige Aspekte oder Muster wurden möglicherweise übersehen.                                                    |
| **5–9 Punkte**   | Die Analyse ist oberflächlich, und die Visualisierungen sind nicht sehr aussagekräftig.                                                                          |
| **0–4 Punkte**   | Es wurden keine aussagekräftigen Visualisierungen oder Analysen durchgeführt.                                                                                    |

### 4. **Modellierung und Interpretation (20%)**

| Punktebereich    | Beschreibung                                                                                                                                                            |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **15–20 Punkte** | Ein geeignetes Modell mit mindestens 2 Variablen wurde ausgewählt, und die Ergebnisse sind klar interpretiert. Die Wahl des Modells ist gut begründet, und die Interpretation ist nachvollziehbar. |
| **10–14 Punkte** | Ein angemessenes Modell mit mindestens 2 Variablen wurde verwendet, aber die Interpretation der Ergebnisse ist unklar oder nicht vollständig.                           |
| **5–9 Punkte**   | Das Modell ist unpassend oder es fehlt eine klare Begründung. Die Ergebnisse sind schwer zu interpretieren.                                                             |
| **0–4 Punkte**   | Es wurde kein Modell angewendet oder die Interpretation der Ergebnisse ist unverständlich.                                                                              |

### 5. **Bericht (20%)**

| Punktebereich    | Beschreibung                                                                                                                                                           |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **15–20 Punkte** | Der Bericht ist klar strukturiert, übersichtlich und gut dokumentiert. Alle Schritte der Analyse und Bereinigung sind nachvollziehbar und begründet. Die Dokumentation ist verständlich und präzise. |
| **10–14 Punkte** | Der Bericht ist grösstenteils strukturiert, aber es fehlen teilweise Details oder er könnte klarer formuliert werden.                                                  |
| **5–9 Punkte**   | Der Bericht hat strukturelle Mängel und wichtige Aspekte sind unzureichend dokumentiert.                                                                               |
| **0–4 Punkte**   | Der Bericht ist unstrukturiert oder unvollständig. Wichtige Informationen fehlen.                                                                                      |
