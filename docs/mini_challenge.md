# Mini-Challenge  
In dieser Mini-Challenge kannst du dein Wissen anwenden, um reale Sensordaten zu untersuchen und wichtige Zusammenhänge zwischen Variablen zu modellieren.

Ziel ist es, einen Datensatz auszuwählen, diesen gründlich zu bereinigen, die Datenanalyse durchzuführen und anschliessend mithilfe eines ML-Modells eine Vorhersage oder Beziehung zwischen zwei Variablen zu quantifizieren und zu visualisieren. Der Fokus liegt auf der praktischen Umsetzung des gelernten Stoffes und der kritischen Auseinandersetzung mit den Daten.

## Vorgehen  
Wähle einen Sensordatensatz aus, der in mehreren Dateien vorliegt. Du kannst Daten aus einem früheren Modul oder aus öffentlich zugänglichen Quellen wie Kaggle nutzen. Kläre deine Auswahl mit den Dozenten ab, damit der Datensatz wirklich geeignet ist.

Hier einige Beispielsdatensätze:

- [Smart Building System](https://www.kaggle.com/datasets/ranakrc/smart-building-system)
- [CU-BEMS, smart building energy and IAQ data](https://www.kaggle.com/datasets/claytonmiller/cubems-smart-building-energy-and-iaq-data)
- [ASHRAE Global Occupant Behavior Database](https://ashraeobdatabase.com/)

Bereinige die Daten gründlich, indem du unvollständige, fehlerhafte oder inkonsistente Daten behandelst. Vor der Analyse müssen alle Dateien in eine einzige Datei zusammengeführt werden, damit du eine einheitliche und umfassende Datengrundlage hast.

Untersuche den Datensatz explorativ und beschreibe auffällige Muster, Anomalien oder fehlende Werte. Erstelle Visualisierungen, die dir helfen, die Daten besser zu verstehen.

Identifiziere zwei Variablen, deren Zusammenspiel du analysieren möchtest, und wähle ein geeignetes ML-Modell, um eine Korrelation zu beschreiben. Eine lineare Regression eignet sich beispielsweise gut, um Zusammenhänge zwischen zwei kontinuierlichen Variablen zu visualisieren. Fasse die Ergebnisse zusammen und interpretiere, was die Modellierung über die Beziehung der Variablen aussagt.

> [!WARNING]  
> Dies ist eine Einzelarbeit. Besprich die genauen Auftragsdetails jedoch mit den Dozenten, damit deine Herangehensweise sinnvoll bleibt. Wähle eine Fragestellung, die eine ausgewogene Balance zwischen Herausforderung und Machbarkeit bietet.

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

Um sicherzustellen, dass du auf dem richtigen Weg bist, gib bis Ende Semesterwoche 5 auf Teams das Check-in dieser Mini-Challenge ab. Beschreibe dort in zwei bis drei Sätzen kurz, welchen Datensatz du verwenden willst und welches Analyseziel du verfolgst. So können wir früh prüfen, ob der Aufwand passt und ob sich der Datensatz für die Mini-Challenge eignet.

Wenn du schon früher beginnen willst, kannst du uns selbstverständlich auch eine E-Mail schreiben. 

## Bewertungsraster

### 1. **Datenauswahl und Zieldefinition (10%)**

| Punktebereich   | Beschreibung                                                                                                                            |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| **5–10 Punkte** | Der Datensatz ist gut gewählt und passt hervorragend zur Zielsetzung der Aufgabe. Er setzt sich aus mindestens 2 Dateien zusammen. Das Ziel der Analyse ist klar formuliert.             |
| **3–4 Punkte**  | Der Datensatz ist grösstenteils geeignet, aber es gibt kleinere Unsicherheiten bei der Zieldefinition oder der Auswahl des Datensatzes. |
| **1–2 Punkte**  | Der Datensatz passt nicht gut zur Aufgabe oder das Ziel ist unklar formuliert.                                                          |
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
