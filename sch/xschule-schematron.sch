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
   <sch:ns prefix="xbd" uri="http://xbildung.de/def/xbildung/1.2/xsd"/>
   <sch:ns prefix="xml" uri="http://www.w3.org/XML/1998/namespace"/>
   <sch:ns prefix="xoev-code" uri="http://xoev.de/schemata/code/1_0"/>
   <sch:ns prefix="xoev-lc" uri="http://xoev.de/latinchars/1_1/datatypes"/>
   <sch:ns prefix="xsc" uri="http://xschule.digital/def/xschule/1.2/xsd"/>
   <sch:pattern>
      <!--Abstrakte Regeln-->
      <!-- /Data/XSchule/Nachweise/schueler.abiturzeugnis.0002 -->
      <sch:rule id="rule-XSC-0002-0100-MUSS-Kurs-Pruefung-AbiturfachDigital"
                abstract="true">
         <sch:assert id="XSC-0002-0100-MUSS-Kurs-Pruefung-AbiturfachDigital"
                     test="every $kurs in (//xsc:kurs[xsc:berechnungsgrundlage='true'] | //xsc:pruefungsergebnis[not(xsc:artDerPruefung/xsc:code/code='http://xbildung.de/def/xbildung/1.0/code/artderpruefung/besondere_lernleistung')]) satisfies count($kurs/xsc:fach[@listURI='urn:xschule-digital:xschule:codeliste:abiturfachdigital']) &gt; 0">Alle eingebrachten Abiturfächer und Prüfungen müssen mit einem xsc:fach aus der Abiturfach-Digital-Liste versehen sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.AbfolgeDerFremdsprachen -->
      <sch:rule id="rule-XSC-1000-0001-WNIL_AdF" abstract="true">
         <sch:assert id="XSC-1000-0001-WNIL_AdF"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.ArtDerPruefung -->
      <sch:rule id="rule-XSC-1000-0012-WNIL_AdP" abstract="true">
         <sch:assert id="XSC-1000-0012-WNIL_AdP"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.ArtDerSchulaufnahme -->
      <sch:rule id="rule-XSC-1000-0002-WNIL_AdSA" abstract="true">
         <sch:assert id="XSC-1000-0002-WNIL_AdSA"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.ArtDerSchule  -->
      <sch:rule id="rule-XSC-1000-0014-WNIL_AdS" abstract="true">
         <sch:assert id="XSC-1000-0014-WNIL_AdS"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.ArtDerUnterrichtsteilnahme -->
      <sch:rule id="rule-XSC-1000-0003-WNIL_AdU" abstract="true">
         <sch:assert id="XSC-1000-0003-WNIL_AdU"
                     test="(exists(*:nichtGelisteterWert) and ends-with(*:code/code/text(), 'wert_nicht_in_liste')) or (empty(*:nichtGelisteterWert) and not(ends-with(*:code/code/text(), 'wert_nicht_in_liste')))">Nur wenn der Codewert 'wert_nicht_in_liste' ist, darf und muss das Feld 'nichtGelisteterWert' (ggf. leer) vorhanden sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.ArtDesSchulabschlusses  -->
      <sch:rule id="rule-XSC-1000-0013-WNIL_AdSA" abstract="true">
         <sch:assert id="XSC-1000-0013-WNIL_AdSA"
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
      <!-- /Data/XSchule/Baukasten/Anonymous/wnil.Lernzeitmodell -->
      <sch:rule id="rule-XSC-1000-0015-WNIL_LZM" abstract="true">
         <sch:assert id="XSC-1000-0015-WNIL_LZM"
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
      <sch:rule context="xsc:schueler.abiturzeugnis.0002">
         <sch:extends rule="rule-XSC-0002-0100-MUSS-Kurs-Pruefung-AbiturfachDigital"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:abfolge">
         <sch:extends rule="rule-XSC-1000-0001-WNIL_AdF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.bvjzeugnis.0005//xsc:abfolge">
         <sch:extends rule="rule-XSC-1000-0001-WNIL_AdF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:abfolge">
         <sch:extends rule="rule-XSC-1000-0001-WNIL_AdF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:abfolge">
         <sch:extends rule="rule-XSC-1000-0001-WNIL_AdF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:artDerSchulaufnahme">
         <sch:extends rule="rule-XSC-1000-0002-WNIL_AdSA"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001/xsc:besuchteSchule//xsc:art">
         <sch:extends rule="rule-XSC-1000-0003-WNIL_AdU"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:schullaufbahnempfehlung">
         <sch:extends rule="rule-XSC-1000-0004-WNIL_LE"/>
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
      <sch:rule context="xsc:schueler.bvjzeugnis.0005//xsc:verpflichtungsgrad">
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
      <sch:rule context="xsc:schueler.bvjzeugnis.0005//xsc:nachpruefung">
         <sch:extends rule="rule-XSC-1000-0009-WNIL_NPr"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:nachpruefung">
         <sch:extends rule="rule-XSC-1000-0009-WNIL_NPr"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:aufgabenfeld">
         <sch:extends rule="rule-XSC-1000-0010-WNIL_AF"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.bvjzeugnis.0005//xsc:aufgabenfeld">
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
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:artDerPruefung">
         <sch:extends rule="rule-XSC-1000-0012-WNIL_AdP"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.bvjzeugnis.0005//xsc:artDerPruefung">
         <sch:extends rule="rule-XSC-1000-0012-WNIL_AdP"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:artDerPruefung">
         <sch:extends rule="rule-XSC-1000-0012-WNIL_AdP"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:artDesSchulabschlusses">
         <sch:extends rule="rule-XSC-1000-0013-WNIL_AdSA"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.bvjzeugnis.0005//xsc:artDesSchulabschlusses">
         <sch:extends rule="rule-XSC-1000-0013-WNIL_AdSA"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.schulbescheinigung.0004//xsc:voraussichtlicherAbschluss">
         <sch:extends rule="rule-XSC-1000-0013-WNIL_AdSA"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:artDesSchulabschlusses">
         <sch:extends rule="rule-XSC-1000-0013-WNIL_AdSA"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.abiturzeugnis.0002//xsc:schulform">
         <sch:extends rule="rule-XSC-1000-0014-WNIL_AdS"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.bvjzeugnis.0005//xsc:schulform">
         <sch:extends rule="rule-XSC-1000-0014-WNIL_AdS"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.schulbescheinigung.0004//xsc:schulform">
         <sch:extends rule="rule-XSC-1000-0014-WNIL_AdS"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001//xsc:schulform">
         <sch:extends rule="rule-XSC-1000-0014-WNIL_AdS"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:schulform">
         <sch:extends rule="rule-XSC-1000-0014-WNIL_AdS"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.bvjzeugnis.0005//xsc:lernzeitmodell">
         <sch:extends rule="rule-XSC-1000-0015-WNIL_LZM"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003//xsc:lernzeitmodell">
         <sch:extends rule="rule-XSC-1000-0015-WNIL_LZM"/>
      </sch:rule>
   </sch:pattern>
</sch:schema>
