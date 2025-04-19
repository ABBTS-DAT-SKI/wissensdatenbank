# Anleitung zur Erweiterung der Wissensdatenbank

## Installation der Packages

### Mit UV

Keine Installation nötig, da uv das alles selbst aufsetzen kann.

astral-sh/uv kann hier heruntergeladen werden: https://docs.astral.sh/uv/#installation

### Mit pip

```bash
pip install -e .
```

## Lokales starten der WissensDB

### Mit uv

```bash
uv run mkdocs serve
```

oder 

```bash
make docs-serve
```

Die DB sollte unter http://localhost:8000/wissensdatenbank erreichbar sein.

### Andere

Zuerst Packages installieren, danach:

```bash
mkdocs serve
```

Die DB sollte unter http://localhost:8000/wissensdatenbank erreichbar sein.

## Erweitern der Wissensdatenbank

1. Markdown-Dateien im docs-Ordner unter dem richtigen Ordner ablegen. 

2. Danach in der mkdocs.yaml Datei unter `nav` verlinken.

3. Änderungen mit dem lokalen Server testen. Wenn alles passt -> pushen.