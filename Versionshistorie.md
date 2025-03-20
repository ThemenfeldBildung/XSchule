**XSchule - Versionshistorie**

<!-- TOC start -->

- [Version 1.1](#version-11)
- [Version 1.0](#version-10)
- [Version 0.7](#version-07)

<!-- TOC end -->

<!-- TOC --><a name="version-11"></a>
# Version 1.1
**Veröffentlichungsdatum:** 25.02.2025

## Aufnahme des BVJ-Zeugnisses

Es wurde ein neuer Nachweis aufgenommen; das Zeugnis des berufsvorbereitenden Jahres (kurz: BVJ-Zeugnis). Die Modellierung des Nachweises wurde zusammen mit XBerufsbildung erarbeitet. In einem gemeinsamen Workshop wurden hier mit den Stakeholdern beider Teilvorhaben die Anforderungen an das BVJ-Zeugnis erhoben und diskutiert.

Das BVJ-Zeugnis wurde initial anhand des generischen Zeugnisses erstellt und die spezifischen Anforderungen wurden im Verlauf der Modellierung geschärft. Die allgemeinen Angaben auf dem BVJ-Zeugnis enthalten neben der Art des Schulabschlusses, der Nachweisperiode und der Zeugnisart auch sehr spezifische Angaben, wie z. B. den Berufsbereich, die Fachrichtung, die Art der Berufsreife und den Schwerpunkt. Die Angaben zum Schüler im BVJ-Zeugnis enthalten Namen, Geburtsort- und Datum sowie die Möglichkeit eine Identifikationsnummer anzugeben.

Einige Anpassungen für das BVJ-Zeugnis haben Auswirkungen auf das generische Zeugnis. Diese sind im folgenden Abschnitt beschrieben:

## Änderungen am generischen Zeugnis

Das generische Zeugnis wurde um einige Elemente ergänzt, die als Anforderungen an das BVJ-Zeugnis Eingang bei XSchule erhalten haben. Auch für das generische Zeugnis kann nun ein Schwerpunkt des Bildungsgangs angegeben werden. Zudem kann nun gekennzeichnet werden, in welchem Lernzeitmodell ein Bildungsgang absolviert wird (z. B. in Voll- oder Teilzeit). Auch die Angabe zur Art der Berufsreife kann im generischen Zeugnis angegeben werden.

Unabhängig vom BVJ-Zeugnis wurde dem generischen Zeugnis die Eigenschaft Praktikum hinzugefügt. Diese verweist auf die Klasse Praktikum aus XBildung und dient zur Angabe von Daten zu einem absolvierten Praktikum.

## Änderungen an Codelisten

- Die Codeliste ArtDerSchulaufnahme wurde um den Wert flexible Einschulung erweitert.
- In der Codeliste Abiturfach wurden die englischen Beschreibungen der Fächer spezifiziert. Als Quelle wurden hierbei die Werte aus ISCED-F-2013 verwendet.
- Die Codeliste KDS-Fach wurde nach dem Beispiel der Codeliste Abiturfach erstellt. Die Fächer in der Liste wurde auf die Publications Office Liste ISCED-F gemappt.
- Die Versionierung der in Version 1.1 gänderten Codelisten wurde auf die neue Systematik, wie im Kapitel II.4 Code-Datentypen beschrieben, angepasst.
- Die Codelisten ArtDerBemerkung und Gesetzlicher Vertreter sind nicht länger direkt über XSchule eingebunden. Sie werden nun über XBildung bezogen.

## Sonstige Änderungen

Die Klasse Schulkurs wurde um die Angabe der Stundenanzahl ergänzt. Diese Eigenschaft gibt an, in welchem Umfang ein Schulfach gelehrt wurde. Üblicherweise entspricht die Angabe der (Schul-) Stunden dem Zeitrichtwert oder der Stundentafel des jeweiligen Anwendungsfalls.

Das ehemalige Kapitel \"I.1 Vision XSchule\" wurde entfernt. Im Kapitel [II.3 Wichtige Hinweise zur
Implementierung](https://xschule.digital/def/xschule/1.1/spec/xsc_spezifikation_1.1.pdf#spezifikation.wichtigeHinweiseZurImplementierung) wurde ein Abschnitt zu \"grundlegende Designentscheidungen\" hinzugefügt.

## Liste der umgesetzten Tickets

Folgende (intern dokumentierte) Tickets wurden umgesetzt:

- XSC-378 Codeliste für KDS-Fächer erstellen
- XSC-380 Beschreibung des Code-Datentyps \"Foerderschwerpunkt\" anpassen
- XSC-383 Codeliste \"Abiturfach\" überarbeiten
- XSC-387 Codeliste \"ArtDerBemerkung\" über XBD einbinden
- XSC-390 Codeliste \"Gesetzlicher Vertreter\" über XBD einbinden
- XSC-393 \"Praktikum\" in generisches Zeugnis aufnehmen
- XSC-396 \"Stunden\" in die Klasse \"Schulkurs\" aufnehmen
- XSC-397 „Art der Berufsbildungsreife" in die Nachrichten \"schueler.zeugnis.0003\" und \"schueler.bvjzeugnis.0005\" aufnehmen
- XSC-399 \"Lernzeitmodell\" ins generische Zeugnis aufnehmen
- XSC-400 Kapitel \"Kernanwendungsfälle\" überarbeiten
- XSC-401 Abschnitt \"Implementierung\" ergänzen
- XSC-403 \"Anlage\" in die Nachricht \"schueler.zeugnis.0003\" aufnehmen
- XSC-408 Wert \"Flexible Einschulung\" in die Codeliste \"ArtDerSchulaufnahme\" aufnehmen
- XSC-410 BVJ Instanznachricht erstellen
- XSC-422 Versionierung von Codelisten an neue Systematik anpassen
- XSC-425 Änderung von \'Ort\' in \'Ortsangabe\' auf qualified
- XSC-429 Kapitel \"I.1 Vision XSchule\" entfernen

<!-- TOC --><a name="version-11"></a>
# Version 1.0
**Veröffentlichungsdatum:** 28.05.2024

## Neues Konzept zur Einbindung der Kernkomponenten

Die XÖV-Kernkomponenten wurden aus XBildung entfernt und sind mit der Version 1.0 XSchule direkt über die XÖV-Bibliothek eingebunden.

Die Kernkomponente NatuerlichePerson wurde anwendungsfallspezifisch modelliert und wurde dadurch zu Schueler, SchuelerWechselnd und SchuelerAbiturzeugnis. Durch SchuelerWechselnd kann der Anwendungsfall der Wechselnachricht erfüllt werden, SchuelerAbiturzeugnis wird im Abiturzeugnis verwendet. Der Schueler findet im generischen Zeugnis sowie in der Schulbescheinigung Anwendung. Neben der Anschrift wurde zusätzlich die AnschriftSchuelerAbiturzeugnis angelegt. Hierbei handelt es sich um eine reduzierte Anschrift, die lediglich aus Postleitzahl, Ort und Staat besteht und für das Abiturzeugnis verwendet wird.

Im Rahmen der Neueinbindung der Kernkomponenten aus der XÖV-Bibliothek ins XSchule-Modell wurde die Klasse Schule strukturell überarbeitet. Drei Kernkomponenten Schule, SchuleBesucht und SchuleAufnehmend wurden als Kernkomponente \"Organisation\" aus der XÖV-Bibliothek mit fach- und anwendungsfallspezifischen Änderungen ins Modell aufgenommen.

Zu den Kernkomponenten kommt die Ortsangabe hinzu, die als reduzierte Anschrift verwendet wird.

Zudem wurden die Beschreibungstexte der einzelnen Klassen und Attribute der Kernkomponenten angepasst und dadurch auf den jeweiligen XSchule-spezifischen Anwendungsfall zugeschnitten.

## Strukturelle Überarbeitung der Nachricht schueler.wechsel.0001

Die Nachricht schueler.wechsel.0001 wurde strukturell überarbeitet. Die Eigenschaft \"konfession\" vom Datentyp Code.Konfession wurde der Klasse SchuelerWechselnd zugeordnet. Die Eigenschaft \"aufnahme\" wurde der Klasse SchuleAufnehmend zugeordnet. Die Eigenschaft \"artDerSchulaufnahme\" mit der entsprechend hinterlegten Codeliste ArtDerSchulaufnahme wurde aus der Klasse \"Schullaufbahn\" entfernt und als Kindelement der Eigenschaft \"aufnahme\" in der Klasse SchuleAufnehmend hinzugefügt. Die Eigenschaften \"schulformspezifischeZusatzdaten\" vom Datentyp SchulformspezifischeZusatzdaten, \"wahlpflichtkurs\" vom Datentyp Schulkurs und \"fehltage\" vom Datentyp Fehltage wurden der Klasse SchuleBesucht zugeordnet.

## Erweiterbare Codelisten

Die folgenden Codelisten sind zusätzlich zur Erweiterung vorgesehen: *ArtDerPruefung* (genutzt von Pruefungsergebnis), *ArtDerSchule* (genutzt von Schueler, SchuelerAbiturzeugnis, SchuelerWechselnd, Schule und SchuleBesucht) und *ArtDesSchulabschlusses* (genutzt in Schulbescheinigung, Abiturzeugnis und Zeugnis. Wird der Wert \"wert_nicht_in_liste\" ausgewählt, erlaubt die Modellierung nun eine Freitext-Angabe. Für die Modellierung bedeutet das, dass erweiterbare Codelisten nun als anonyme Klasse umgesetzt sind und die Code-Werte zusätzlich in einen \<xsc:code\>-Tag eingeschlossen werden.

## Weitere Änderungen an Codelisten

Die Codeliste Verpflichtungsgrad wurde um die Werte \"außerunterrichtliche Angebote\" und \"freiwillige Zusatzangebote\" ergänzt.

Des Weiteren wurde die Codeliste Versetzungstyp um die Werte \"Schulformwechsel ohne Versetzung\", \"Versetzung mit Überspringen einer Klasse\", \"Versetzung mit Schulformwechsel\" sowie \"Versetzung mit Notenschutz\" ergänzt.

Die Codeliste Jahrgangsstufe wurde im Rahmen der Umstellung auf KDS 4.0 umfassend erweitert.

Da die Codelisten Abiturfach, ArtDerHZB, Foederschwerpunkt und Aufgabenfeld von XSchule technisch zur Verfügung gestellt werden, wurde ihre Version auf 1.0 vereinheitlicht. Das hat auch Auswirkung auf die URI der Codelisten-Werte.

Die Codeliste Kursstatus wurde in den vorherigen XSchule-Versionen über XBildung eingebunden. Mit der Version 1.0 wurde die Codeliste aus XBildung entfernt und wird nun direkt bei XSchule eingebunden.

## Sonstige Änderungen

Es wurde die Klasse Anlage umgesetzt, die eine Übermittlung von Anlagen ermöglicht. XSchule legt sich nicht abschließend darauf fest, wie Anlagen übermittelt werden sollen. Wird die Anlage nicht in die XML-Datei eingebettet, wird davon ausgegangen, dass sie über den Dateinamen und das verwendete Übertragungs- bzw. Auslieferungsverfahren eindeutig identifiziert werden kann.

Die Klasse Schulkurs und die bisher nachgenutzte Klasse Kurs aus XBildung wurden vereint. Die Klasse Schulkurs enthält nun alle Eigenschaften der beiden vorherigen Klassen, wobei die Reihenfolge der Eigenschaften verändert wurde.

Zudem erfolgte eine Umbenennung von \"sonderpaedagogischesGutachten\" in \"anlage\". Die Multiplizität wurde auf \"1..n\" geändert und die Beschreibung angepasst.

Die XSchule-Journey wurde überarbeitet und mit den anderen Teilvorhaben harmonisiert, indem nun jeder einzelne Schritt innerhalb der XSchule-Journey beschrieben wird.

## Liste der umgesetzten Tickets

Folgende (intern dokumentierte) Tickets wurden umgesetzt:

- XSC-150: Rolle der Anschrift bei Unterbringung in Kinderheim / Jugendheim klären
- XSC-249: Kernkomponenten in XSchule anwendungsfallspezifisch einsetzen
- XSC-321: Beschreibung zu sonderpädagogischem Förderbedarf und Förderschwerpunkt verbessern
- XSC-322: Codeliste Verpflichtungsgrad überarbeiten
- XSC-325: Beschreibung und Werte von Codelisten, die auf dem Kerndatensatz 4.0 basieren, vereinheitlichen
- XSC-340: Beispielinstanznachricht für Schulbescheinigung erstellen
- XSC-344: Versionierung von Codelisten prüfen und ggf. anpassen
- XSC-347: Codelisten weitestgehend auf sprechende Werte umstellen
- XSC-348: Wechselinstanz Primarwechsel XSC-Journey: ArtDerSchule auf schulartunabhaengige_orientierungsstufe umstellen
- XSC-350: Klasse Anlage erstellen und nutzen
- XSC-351: Codeliste mit \~wert_nicht_in_liste erweiterbar machen
- XSC-352: xbd:Kurs vollständig in Schulkurs einbauen
- XSC-353: Schule statt ausstellendeSchule in Schulbescheinigung verwenden
- XSC-354: ortFruehererGemeindename aus Anschrift löschen
- XSC-355: Schueler in Schulbescheinigung verwenden und schuljahr hinzufügen
- XSC-357: xbd:Ortsangabe nachnutzen
- XSC-358: Codeliste Versetzungstyp überarbeiten
- XSC-360: Eigenschaft Sonderpädagogisches Gutachten zu Anlage verallgemeinern
- XSC-361: Reihenfolge Eigenschaften Schulkurs optimieren
- XSC-364: Herkunft zusätzlicher Werte in XSC Codelisten dokumentieren
- XSC-365: URI in Codeliste Abiturfächer auf XSC an Spezifikation anpassen und Herkunft dokumentieren
- XSC-366: Codeliste Jahrgangsstufe überarbeiten
- XSC-368: Beschreibung der Kernkomponenten anpassen
- XSC-371: Zweite Beispielinstanznachricht für Schulbescheinigung erstellen
- XSC-372: Schulbescheinigung zu einer Erweiterung vom Dokument machen
- XSC-375: XSC-Journey überarbeiten
- XSC-376: Codeliste Kursstatus erstellen

---

<!-- TOC --><a name="version-07"></a>
# Version 0.7

**Veröffentlichungsdatum:** 10.11.2023

**Veränderungen zur vorherigen Version:** Das Modell wurde so ergänzt, dass es erweiterbar ist. Dadurch können insbesondere die Wechselnachricht und die Schulbescheinigung in spezialisierten, z.B. bundeslandspezifischen Anwendungsfällen verwendet werden.

## Liste der umgesetzten Tickets

Folgende (intern dokumentierte) Tickets wurden umgesetzt:

**Änderungen bezüglich des Schulzeugnis**
- XSC-318: niveau umbennen in niveauEQR
- XSC-255: Umgang mit Jahres-/Zwischenzeugnis als Abiturzeugnis erläutern
- XSC-315: Nachweiszeitraum in Zeugnisse aufnehmen
- XSC-327: Schematron-Regeln für schueler.zeugnis.0003 löschen
- XSC-311: Anforderungsniveaus auf KMK beschränken und als Typ-4 umsetzen
- XSC-314: Codeliste Aufgabenfeld an KMK Vorgaben anpassen

**Änderungen bezüglich des Schulwechsels**
- XSC-297: Nutzung von WechselnderSchueler:kommunikation/kontaktmoeglichkeit überprüfen
- XSC-307: Erstellen Codeliste für Förderschwerpunkt
- XSC-317: Reihenfolge von Bezeichnung und Beschreibung ändern
- XSC-310: Erweiterung-Eigenschaft für Wechselnachricht und Schulbescheinigung hinzufügen
- XSC-316: WechselnderSchueler: xbd:Kurs durch xsc:Schulkurs ersetzen

**Sonstige Änderungen**
- XSC-292: Schulbescheinigung als Dokument und neues Unterkapitel I.4.3 aufnehmen
- XSC-184: Typ-4-Codelisten und Eigenschaften für Profilbildung anpassen
- XSC-309: Codeliste mit \~wert_nicht_in_liste erweiterbar machen
- XSC-294: Codelisten Angleich Name (lang)/Name (kurz)
- XSC-296: Nachweise mit XML-Signatur signierbar machen