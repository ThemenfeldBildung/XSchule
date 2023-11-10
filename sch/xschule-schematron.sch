<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            queryBinding="xslt2">
   <sch:ns prefix="bn-beh"
           uri="http://xoev.de/schemata/basisnachricht/behoerde/1_0"/>
   <sch:ns prefix="bn-g2g" uri="http://xoev.de/schemata/basisnachricht/g2g/1_0"/>
   <sch:ns prefix="bn-kom"
           uri="http://xoev.de/schemata/basisnachricht/kommunikation/1_0"/>
   <sch:ns prefix="bn-uq-g2g"
           uri="http://xoev.de/schemata/basisnachricht/unqualified/g2g/1_0"/>
   <sch:ns prefix="din91379"
           uri="urn:xoev-de:kosit:xoev:datentyp:din-91379_2022-08"/>
   <sch:ns prefix="dinspec91379"
           uri="urn:xoev-de:kosit:xoev:datentyp:din-spec-91379_2019-03"/>
   <sch:ns prefix="ds" uri="http://www.w3.org/2000/09/xmldsig#"/>
   <sch:ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
   <sch:ns prefix="xbd" uri="http://xbildung.de/def/xbildung/0.95/xsd"/>
   <sch:ns prefix="xml" uri="http://www.w3.org/XML/1998/namespace"/>
   <sch:ns prefix="xoev-code" uri="http://xoev.de/schemata/code/1_0"/>
   <sch:ns prefix="xoev-lc" uri="http://xoev.de/latinchars/1_1/datatypes"/>
   <sch:ns prefix="xsc" uri="http://xschule.digital/def/xschule/0.7/xsd"/>
   <sch:pattern>
      <!--Abstrakte Regeln-->
      <!-- /Data/XSchule/Nachweise/schueler.abiturzeugnis.0002 -->
      <sch:rule id="rule-XSC-0002-0010-MUSS-Vorname" abstract="true">
         <sch:assert id="XSC-0002-0010-MUSS-Vorname"
                     test="not(empty(xsc:schueler[1]/xbd:nameNatuerlichePerson[1]/xbd:vorname[1]/xbd:name[1]))">Der Vorname vom Zeugnisinhabenden muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0002-0011-MUSS-Familienname" abstract="true">
         <sch:assert id="XSC-0002-0011-MUSS-Familienname"
                     test="not(empty(xsc:schueler[1]/xbd:nameNatuerlichePerson[1]/xbd:familienname[1]/xbd:name[1]))">Der Familienname vom Zeugnisinhabenden muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0002-0012-MUSS-Geburtsort" abstract="true">
         <sch:assert id="XSC-0002-0012-MUSS-Geburtsort"
                     test="not(empty(xsc:schueler[1]/xbd:geburt[1]/xbd:geburtsort[1]/xbd:ort[1]))">Der Geburtsort vom Zeugnisinhabenden muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0002-0013-MUSS-Geburtstag" abstract="true">
         <sch:assert id="XSC-0002-0013-MUSS-Geburtstag"
                     test="not(empty(xsc:schueler[1]/xbd:geburt[1]/xbd:datum[1]))">Das Geburtsdatum vom Zeugnisinhabenden muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0002-0015-MUSS-Wohnort" abstract="true">
         <sch:assert id="XSC-0002-0015-MUSS-Wohnort"
                     test="not(empty(xsc:schueler[1]/xbd:anschrift[1]/xbd:ort[1]))">Der Wohnort vom Zeugnisinhabenden muss angegeben werden.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0002-0100-MUSS-BildungseinrichtungName" abstract="true">
         <sch:assert id="XSC-0002-0100-MUSS-BildungseinrichtungName"
                     test="not(empty(xsc:schule[1]/xbd:name[1]/xbd:name[1]))">Der Name der Bildungseinrichtung, die das Zeugnis ausstellt, muss angegeben werden.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0002-0200-MUSS-Kurs-Pruefung-KMK-Abiturfach"
                abstract="true">
         <sch:assert id="XSC-0002-0200-MUSS-Kurs-Pruefung-KMK-Abiturfach"
                     test="every $kurs in (//xsc:kurs[xsc:berechnungsgrundlage='true'] | //xsc:pruefungsergebnis) satisfies count($kurs/xsc:fach[@listURI='urn:xschule-digital:kmk:codeliste:abiturfach']) &gt; 0">Alle eingebrachten Abiturfächer und Prüfungen müssen mit einem xsc:fach aus der KMK-Abiturfächer-Liste versehen sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Nachweise/schueler.wechsel.0001 -->
      <sch:rule id="rule-XSC-0001-0010-MUSS-Vorname" abstract="true">
         <sch:assert id="XSC-0001-0010-MUSS-Vorname"
                     test="not(empty(xsc:schueler[1]/xbd:nameNatuerlichePerson[1]/xbd:vorname[1]/xbd:name[1]))">Der Vorname vom wechselnden Schüler muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0001-0011-MUSS-Familienname" abstract="true">
         <sch:assert id="XSC-0001-0011-MUSS-Familienname"
                     test="not(empty(xsc:schueler[1]/xbd:nameNatuerlichePerson[1]/xbd:familienname[1]/xbd:name[1]))">Der Familienname vom wechselnden Schüler muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0001-0012-MUSS-Geburtsort" abstract="true">
         <sch:assert id="XSC-0001-0012-MUSS-Geburtsort"
                     test="not(empty(xsc:schueler[1]/xbd:geburt[1]/xbd:geburtsort[1]/xbd:ort[1]))">Der Geburtsort vom wechselnden Schüler muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0001-0013-MUSS-Geburtstag" abstract="true">
         <sch:assert id="XSC-0001-0013-MUSS-Geburtstag"
                     test="not(empty(xsc:schueler[1]/xbd:geburt[1]/xbd:datum[1]))">Das Geburtsdatum vom wechselnden Schüler muss angegeben sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.AbfolgeDerFremdsprachen -->
      <sch:rule id="rule-XSC-1000-0001-WNIL_AdF" abstract="true">
         <sch:assert id="XSC-1000-0001-WNIL_AdF"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.ArtDerSchulaufnahme -->
      <sch:rule id="rule-XSC-1000-0002-WNIL_AdS" abstract="true">
         <sch:assert id="XSC-1000-0002-WNIL_AdS"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.ArtDerUnterrichtsteilnahme -->
      <sch:rule id="rule-XSC-1000-0003-WNIL_AdU" abstract="true">
         <sch:assert id="XSC-1000-0003-WNIL_AdU"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.Aufgabenfeld -->
      <sch:rule id="rule-XSC-1000-0010-WNIL_AF" abstract="true">
         <sch:assert id="XSC-1000-0010-WNIL_AF"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.Impfschutz -->
      <sch:rule id="rule-XSC-1000-0011-WNIL_IS" abstract="true">
         <sch:assert id="XSC-1000-0011-WNIL_IS"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.Laufbahnempfehlung -->
      <sch:rule id="rule-XSC-1000-0004-WNIL_LE" abstract="true">
         <sch:assert id="XSC-1000-0004-WNIL_LE"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.Nachpruefung -->
      <sch:rule id="rule-XSC-1000-0009-WNIL_NPr" abstract="true">
         <sch:assert id="XSC-1000-0009-WNIL_NPr"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.Nachweisperiode -->
      <sch:rule id="rule-XSC-1000-0005-WNIL_NPe" abstract="true">
         <sch:assert id="XSC-1000-0005-WNIL_NPe"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.TeilnahmeGemeinsamerUnterricht -->
      <sch:rule id="rule-XSC-1000-0006-WNIL_TgU" abstract="true">
         <sch:assert id="XSC-1000-0006-WNIL_TgU"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.Verpflichtungsgrad -->
      <sch:rule id="rule-XSC-1000-0007-WNIL_VG" abstract="true">
         <sch:assert id="XSC-1000-0007-WNIL_VG"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.Versetzungstyp -->
      <sch:rule id="rule-XSC-1000-0008-WNIL_VT" abstract="true">
         <sch:assert id="XSC-1000-0008-WNIL_VT"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!--Konkrete Regeln-->
      <sch:rule context="xsc:schueler.wechsel.0001">
         <sch:extends rule="rule-XSC-0001-0010-MUSS-Vorname"/>
         <sch:extends rule="rule-XSC-0001-0011-MUSS-Familienname"/>
         <sch:extends rule="rule-XSC-0001-0012-MUSS-Geburtsort"/>
         <sch:extends rule="rule-XSC-0001-0013-MUSS-Geburtstag"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002">
         <sch:extends rule="rule-XSC-0002-0010-MUSS-Vorname"/>
         <sch:extends rule="rule-XSC-0002-0011-MUSS-Familienname"/>
         <sch:extends rule="rule-XSC-0002-0012-MUSS-Geburtsort"/>
         <sch:extends rule="rule-XSC-0002-0013-MUSS-Geburtstag"/>
         <sch:extends rule="rule-XSC-0002-0015-MUSS-Wohnort"/>
         <sch:extends rule="rule-XSC-0002-0100-MUSS-BildungseinrichtungName"/>
         <sch:extends rule="rule-XSC-0002-0200-MUSS-Kurs-Pruefung-KMK-Abiturfach"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:abfolge">
         <sch:extends rule="rule-XSC-1000-0001-WNIL_AdF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:abfolge">
         <sch:extends rule="rule-XSC-1000-0001-WNIL_AdF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:abfolge">
         <sch:extends rule="rule-XSC-1000-0001-WNIL_AdF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001/xsc:schullaufbahn//xsc:art">
         <sch:extends rule="rule-XSC-1000-0002-WNIL_AdS"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001/xsc:besuchteSchule//xsc:art">
         <sch:extends rule="rule-XSC-1000-0003-WNIL_AdU"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:schullaufbahnempfehlung">
         <sch:extends rule="rule-XSC-1000-0004-WNIL_LE"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:nachweisperiode">
         <sch:extends rule="rule-XSC-1000-0005-WNIL_NPe"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:nachweisperiode">
         <sch:extends rule="rule-XSC-1000-0005-WNIL_NPe"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:teilnahmeGemeinsamerUnterricht">
         <sch:extends rule="rule-XSC-1000-0006-WNIL_TgU"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:verpflichtungsgrad">
         <sch:extends rule="rule-XSC-1000-0007-WNIL_VG"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:verpflichtungsgrad">
         <sch:extends rule="rule-XSC-1000-0007-WNIL_VG"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:verpflichtungsgrad">
         <sch:extends rule="rule-XSC-1000-0007-WNIL_VG"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:versetzungsOderAusnahmetatbestandstyp">
         <sch:extends rule="rule-XSC-1000-0008-WNIL_VT"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:nachpruefung">
         <sch:extends rule="rule-XSC-1000-0009-WNIL_NPr"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:nachpruefung">
         <sch:extends rule="rule-XSC-1000-0009-WNIL_NPr"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:aufgabenfeld">
         <sch:extends rule="rule-XSC-1000-0010-WNIL_AF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:aufgabenfeld">
         <sch:extends rule="rule-XSC-1000-0010-WNIL_AF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:aufgabenfeld">
         <sch:extends rule="rule-XSC-1000-0010-WNIL_AF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:impfschutz">
         <sch:extends rule="rule-XSC-1000-0011-WNIL_IS"/>
      </sch:rule>
   </sch:pattern>
</sch:schema>
