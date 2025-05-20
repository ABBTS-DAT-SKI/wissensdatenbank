# Grundlagen des Machine Learning

## Was ist Künstliche Intelligenz (AI)?

Künstliche Intelligenz bezeichnet Computersysteme, die Aufgaben ausführen, die normalerweise menschliche Intelligenz erfordern, wie Sprachverständnis, Entscheidungsfindung und Problemlösung.

## Was ist Machine Learning?

Machine Learning ist ein Teilbereich der AI, bei dem Computersysteme aus Daten lernen und sich verbessern, ohne explizit programmiert zu werden. Algorithmen analysieren Daten und leiten daraus Muster oder Entscheidungen ab.

## Was ist ein Modell?

Ein Modell ist eine mathematische Repräsentation eines Prozesses, das durch Trainingsdaten erstellt wird. Es enthält gelernten Parameter, um Vorhersagen für neue Daten zu treffen. Diese Parameter werden während des Trainingsprozesses durch **Optimierung** angepasst. Der Fehler (der Unterschied zwischen den Vorhersagen des Modells und den tatsächlichen Ergebnissen) wird berechnet und verwendet, um das Modell zu verbessern.

### Input Features und Output

**Input Features** sind die Merkmale, die das Modell nutzt, um Vorhersagen zu treffen, wie z. B. **Wohnfläche** (m²) und **Anzahl der Zimmer** beim Vorhersagen des Hauspreises. Diese Features können numerisch oder kategorisch sein.

**Output** ist das Ergebnis des Modells, das eine Vorhersage basierend auf den Input Features darstellt, wie z. B. der **Preis** eines Hauses oder die **Kategorie** einer E-Mail (z. B. „Spam“ oder „Nicht-Spam“).

## Was ist eine Regression?

Regression ist eine Methode zur Vorhersage kontinuierlicher Werte, basierend auf dem Zusammenhang zwischen Eingabe- und Zielvariablen.

### Beispiel für Regression

Angenommen, wir wollen den **Preis eines Hauses** vorhersagen. Wir nutzen **Wohnfläche** (m²) und **Anzahl der Zimmer** als Input Features. Das Modell gibt dann einen kontinuierlichen Wert – den **Preis des Hauses** – als Output zurück.

## Residuen

**Residuen** (oder Fehler) sind die Differenzen zwischen den **tatsächlichen** und den **vorhergesagten Werten** eines Modells. Für ein einzelnes Beispiel berechnet man das Residuum, indem man den tatsächlichen Wert vom vorhergesagten Wert subtrahiert:

$$
\text{Residuum} = \text{tatsächlicher Wert} - \text{vorhergesagter Wert}
$$

Residuen geben an, wie gut oder schlecht das Modell bei der Vorhersage von Ergebnissen ist. Wenn die Residuen nahe null sind, bedeutet dies, dass das Modell gute Vorhersagen trifft. Grosse Residuen deuten darauf hin, dass das Modell Fehler gemacht hat, die verbessert werden sollten.

## Metriken

Metriken sind Masse, die verwendet werden, um die Leistung eines Modells zu bewerten, insbesondere im Hinblick auf die Fehler, die es macht. Zwei der häufigsten Metriken im Bereich der Regression sind **Mean Absolute Error (MAE)** und **Mean Squared Error (MSE)**.

### Mean Absolute Error (MAE)

Der **Mean Absolute Error** (MAE) misst den durchschnittlichen absoluten Fehler zwischen den tatsächlichen und den vorhergesagten Werten. Es wird berechnet, indem die absoluten Werte der Residuen gemittelt werden:

$$
\text{MAE} = \frac{1}{n} \sum_{i=1}^{n} |\text{tatsächlicher Wert}_i - \text{vorhergesagter Wert}_i|
$$

**Vorteil:** MAE ist leicht zu verstehen, da es einfach den Durchschnitt der absoluten Fehler misst. Ein niedriger MAE-Wert zeigt, dass das Modell im Durchschnitt genau ist.

### Mean Squared Error (MSE)

Der **Mean Squared Error** (MSE) misst den durchschnittlichen quadratischen Fehler zwischen den tatsächlichen und den vorhergesagten Werten. Es wird berechnet, indem die quadratischen Residuen gemittelt werden:

$$
\text{MSE} = \frac{1}{n} \sum_{i=1}^{n} (\text{tatsächlicher Wert}_i - \text{vorhergesagter Wert}_i)^2
$$

**Vorteil:** MSE bestraft grössere Fehler stärker, da grössere Fehler quadratisch wachsen. Das bedeutet, dass das Modell dazu tendiert, Fehler zu minimieren, die besonders gross sind. MSE wird häufig bevorzugt, wenn grosse Fehler zu vermeiden sind.