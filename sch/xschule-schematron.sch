<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            queryBinding="xslt2">
   <sch:ns prefix="dinspec91379"
           uri="urn:xoev-de:kosit:xoev:datentyp:din-spec-91379_2019-03"/>
   <sch:ns prefix="eup" uri="http://data.europa.eu/snb"/>
   <sch:ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
   <sch:ns prefix="xbd" uri="http://xbildung.de/def/xbildung/0.8/xsd"/>
   <sch:ns prefix="xiaa" uri="http://www.osci.de/xinneres/auslandsanschrift/3"/>
   <sch:ns prefix="xian" uri="http://www.osci.de/xinneres/allgemeinername/2"/>
   <sch:ns prefix="xiaz" uri="http://www.osci.de/xinneres/azrnummer/1"/>
   <sch:ns prefix="xibehoerde" uri="http://www.osci.de/xinneres/behoerde/4"/>
   <sch:ns prefix="xicgvz"
           uri="http://www.osci.de/xinneres/codes/gemeindeverzeichnis/2"/>
   <sch:ns prefix="xida" uri="http://www.osci.de/xinneres/datum/2"/>
   <sch:ns prefix="xikomm" uri="http://www.osci.de/xinneres/kommunikation/3"/>
   <sch:ns prefix="xilb" uri="http://www.osci.de/xinneres/lichtbild/1"/>
   <sch:ns prefix="xima" uri="http://www.osci.de/xinneres/meldeanschrift/3"/>
   <sch:ns prefix="xink" uri="http://www.osci.de/xinneres/basisnachricht/4"/>
   <sch:ns prefix="xint" uri="http://www.osci.de/xinneres/nachrichtentypen/4"/>
   <sch:ns prefix="xipa" uri="http://www.osci.de/xinneres/postanschrift/3"/>
   <sch:ns prefix="xiqu" uri="http://www.osci.de/xinneres/quittung/2"/>
   <sch:ns prefix="xirts" uri="http://www.osci.de/xinneres/rueckweisung/3"/>
   <sch:ns prefix="xiwl" uri="http://www.osci.de/xinneres/weiterleitung/4"/>
   <sch:ns prefix="xml" uri="http://www.w3.org/XML/1998/namespace"/>
   <sch:ns prefix="xoev-code" uri="http://xoev.de/schemata/code/1_0"/>
   <sch:ns prefix="xoev-lc" uri="http://xoev.de/latinchars/1_1/datatypes"/>
   <sch:ns prefix="xsc" uri="xschule"/>
   <sch:pattern>
      <!--Abstrakte Regeln-->
      <!-- /Data/XSchule/Nachweise/schueler.wechsel.0001 -->
      <sch:rule id="rule-SCH-0014-AnschriftMussVorkommen" abstract="true">
         <sch:assert id="SCH-0014-AnschriftMussVorkommen"
                     test="count(xsc:schueler/xbd:anschrift)&gt;=1">Das Element "Anschrift" muss enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0021-AlternativeRepraesentationNichtEnthalten"
                abstract="true">
         <sch:assert id="SCH-0021-AlternativeRepraesentationNichtEnthalten"
                     test="empty(xbd:alternativeRepraesentation)">Das Element "Alternative Repräsentation" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0022-ExistenzzeitraumNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0022-ExistenzzeitraumNichtEnthalten"
                     test="empty(xbd:existenzzeitraum)">Das Element "Existenzzeitraum" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0024-NamenssuffixNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0024-NamenssuffixNichtEnthalten" test="empty(xbd:namenssuffix)">Das Element "Namenssuffix" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0025-UnterorganisationNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0025-UnterorganisationNichtEnthalten"
                     test="empty(xbd:unterorganisation)">Das Element "Unterorganisation" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0027-KursBeschreibungNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0027-KursBeschreibungNichtEnthalten"
                     test="empty(xbd:Kurs.Beschreibung)">Beschreibung darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0029-NoteInGesamtpunktzahlNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0029-NoteInGesamtpunktzahlNichtEnthalten"
                     test="empty(xsc:Gesamtpunktzahl.Note)">Das Element "Note" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0030-WohnortMussVorkommen" abstract="true">
         <sch:assert id="SCH-0030-WohnortMussVorkommen"
                     test="count(xsc:schueler.wohnort)&gt;=1">Das Element "Anschrift" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0032-GueltigkeitNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0032-GueltigkeitNichtEnthalten"
                     test="empty(xbd:natuerlichePerson.id.gueltigkeit)">Das Element "Gültigkeit der ID" wird nicht genutzt.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0034-IdentifikationSorgeberechtigterNichtEnthalten"
                abstract="true">
         <sch:assert id="SCH-0034-IdentifikationSorgeberechtigterNichtEnthalten"
                     test="empty(xsc:gesetzlichervertreter.identifikation)">Das Element Identifikation wir bereits mit der Natürlichen Person gesendet.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0038-WohnortNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0038-WohnortNichtEnthalten" test="empty(xsc:schueler.wohnort)">Beim Wechsel dürfen keine Angaben zum Wohnort enthalten sein. Diese Angaben werden durch die Angaben zur Natürlichen Person geliefert.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0040-KontaktmoeglichkeitMussEnthaltenSein" abstract="true">
         <sch:assert id="SCH-0040-KontaktmoeglichkeitMussEnthaltenSein"
                     test="empty(xsc:schulestammdaten.kontaktmoeglichkeit)">Beim Wechsel muss die Kontaktmöglichkeit angegeben werden.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Nachweise/schueler.zeugnis.0002 -->
      <sch:rule id="rule-SCH-0002-AlternativeRepraesentationNichtEnthalten"
                abstract="true">
         <sch:assert id="SCH-0002-AlternativeRepraesentationNichtEnthalten"
                     test="empty(xbd:alternativeRepraesentation)">Das Element "Alternative Repräsentation" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0003-ExistenzzeitraumNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0003-ExistenzzeitraumNichtEnthalten"
                     test="empty(xbd:existenzzeitraum)">Das Element "Existenzzeitraum" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0004-GeschlechtNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0004-GeschlechtNichtEnthalten" test="empty(xbd:geschlecht)">Das Element "Geschlecht" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0005-NamenssuffixNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0005-NamenssuffixNichtEnthalten" test="empty(xbd:namenssuffix)">Das Element "Namenssuffix" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0006-UnterorganisationNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0006-UnterorganisationNichtEnthalten"
                     test="empty(xbd:unterorganisation)">Das Element "Unterorganisation" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0007-ArtDerTraegerschaftNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0007-ArtDerTraegerschaftNichtEnthalten"
                     test="empty(xbd:artDerTraegerschaft)">"Art der Trägerschaft" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0008-HerkunftsspracheNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0008-HerkunftsspracheNichtEnthalten"
                     test="empty(xsc:herkunftssprache)">Das Element "Herkunftssprache" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0009-AuskunftssperreNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0009-AuskunftssperreNichtEnthalten"
                     test="empty(xsc:auskunftssperre)">"Auskunfstsperre" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0010-AngabeWohnungsinhaberNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0010-AngabeWohnungsinhaberNichtEnthalten"
                     test="empty(xbd:Meldeanschrift.Wohnungsinhaber)">Das Element "Wohnungsinhaber" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0011-KursBeschreibungNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0011-KursBeschreibungNichtEnthalten"
                     test="empty(xbd:Kurs.Beschreibung)">Beschreibung darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0013-NoteInGesamtpunktzahlNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0013-NoteInGesamtpunktzahlNichtEnthalten"
                     test="empty(xsc:Gesamtpunktzahl.Note)">Das Element "Note" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0015-AufnehmendeSchuleBekanntNichtEnthalten"
                abstract="true">
         <sch:assert id="SCH-0015-AufnehmendeSchuleBekanntNichtEnthalten"
                     test="empty(xsc:schule.aufnehmendeschulebekannt)">Das Element "aufnehmendeSchuleBekannt" ist nur für den Nachweis "schüler.wechsel.0001" relevant.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0016-SchulformNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0016-SchulformNichtEnthalten"
                     test="empty(xsc:schule.schulform)">Das Element "schulform" ist nur für den Nachweis "schüler.wechsel.0001" relevant.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0017-SchulprofilNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0017-SchulprofilNichtEnthalten"
                     test="empty(xsc:schule.schulprofil)">Das Element "schulprofil" ist nur für den Nachweis "schüler.wechsel.0001" relevant.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0018-BildungsgangNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0018-BildungsgangNichtEnthalten"
                     test="empty(xsc:schule.bildungsgang)">Das Element "bildungsgang" ist nur für den Nachweis "schüler.wechsel.0001" relevant.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0031-PunkteInDurchschnittsnoteNichtEnthalten"
                abstract="true">
         <sch:assert id="SCH-0031-PunkteInDurchschnittsnoteNichtEnthalten"
                     test="empty(xsc:Durchschnittsnote.Punkte)&#xA;">Das Element "Punkte" darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0033-ImpfungNichtEnhalten" abstract="true">
         <sch:assert id="SCH-0033-ImpfungNichtEnhalten" test="empty(xsc:schueler.impfung)">Die Angabe zur Impfung darf im Zeugnis nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0035-SchuelerReisenderNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0035-SchuelerReisenderNichtEnthalten"
                     test="empty(xsc:schueler.schuelerReisender)">Im Zeugnis dürfen keine Angaben zum Schüler reisender Eltern enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0036-BildungsgangNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0036-BildungsgangNichtEnthalten"
                     test="empty(xsc:schule.bildungsgang)">Im Zeugnis dürfen keine Angaben zum Bildungsgang enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0037-AnschriftNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0037-AnschriftNichtEnthalten"
                     test="empty(xbd:natuerlicheperson.meldeanschrift)">Im Zeugnis dürfen keine Angaben zur gesamten Anschrift enthalten sein. Nur Angaben zum Wohnort sind gestattet.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0041-AufgabenfeldMussVorkommen" abstract="true">
         <sch:assert id="SCH-0041-AufgabenfeldMussVorkommen"
                     test="empty(xsc:schulkurs.aufgabenfeld)">Im Zeugnis muss die Angabe zum Aufgabenfeld enthalten sein.</sch:assert>
      </sch:rule>
      <!--Konkrete Regeln-->
      <sch:rule context="xsc:schueler.zeugnis.0002">
         <sch:extends rule="rule-SCH-0002-AlternativeRepraesentationNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0003-ExistenzzeitraumNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0004-GeschlechtNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0005-NamenssuffixNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0006-UnterorganisationNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0007-ArtDerTraegerschaftNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0008-HerkunftsspracheNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0009-AuskunftssperreNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0010-AngabeWohnungsinhaberNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0011-KursBeschreibungNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0013-NoteInGesamtpunktzahlNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0015-AufnehmendeSchuleBekanntNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0016-SchulformNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0017-SchulprofilNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0018-BildungsgangNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0031-PunkteInDurchschnittsnoteNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0033-ImpfungNichtEnhalten"/>
         <sch:extends rule="rule-SCH-0035-SchuelerReisenderNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0036-BildungsgangNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0037-AnschriftNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0041-AufgabenfeldMussVorkommen"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001">
         <sch:extends rule="rule-SCH-0014-AnschriftMussVorkommen"/>
         <sch:extends rule="rule-SCH-0021-AlternativeRepraesentationNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0022-ExistenzzeitraumNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0024-NamenssuffixNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0025-UnterorganisationNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0027-KursBeschreibungNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0029-NoteInGesamtpunktzahlNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0030-WohnortMussVorkommen"/>
         <sch:extends rule="rule-SCH-0032-GueltigkeitNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0034-IdentifikationSorgeberechtigterNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0038-WohnortNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0040-KontaktmoeglichkeitMussEnthaltenSein"/>
      </sch:rule>
   </sch:pattern>
</sch:schema>
