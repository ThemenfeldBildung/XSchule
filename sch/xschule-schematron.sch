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
      <sch:rule id="rule-SCH-0020-NameNatuerlichePersonMussVorkommen" abstract="true">
         <sch:assert id="SCH-0020-NameNatuerlichePersonMussVorkommen"
                     test="count(xsc:schueler/xbd:nameNatuerlichePerson)&gt;=1">Der Name muss enthalten sein. Die Multiplizität ist gleich 1..*.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0021-AlternativeRepraesentationNichtEnthalten"
                abstract="true">
         <sch:assert id="SCH-0021-AlternativeRepraesentationNichtEnthalten"
                     test="empty(xbd:alternativeRepraesentation)">Die Alternative Repräsentation darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0022-ExistenzzeitraumNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0022-ExistenzzeitraumNichtEnthalten"
                     test="empty(xbd:existenzzeitraum)">Der Existenzzeitraum darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0023-GeschlechtNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0023-GeschlechtNichtEnthalten" test="empty(xbd:geschlecht)">Das Geschlecht darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0024-NamenssuffixNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0024-NamenssuffixNichtEnthalten" test="empty(xbd:namenssuffix)">Der Namenssuffix darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0025-UnterorganisationNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0025-UnterorganisationNichtEnthalten"
                     test="empty(xbd:unterorganisation)">Unterorganisation darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0027-KursBeschreibungNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0027-KursBeschreibungNichtEnthalten"
                     test="empty(xbd:Kurs.Beschreibung)">Beschreibung darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0028-KursFachbezeichnungNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0028-KursFachbezeichnungNichtEnthalten"
                     test="empty(xbd:Kurs.Fachbezeichnung)">Fachbezeichnung darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0029-NoteinGesamtpunktzahlNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0029-NoteinGesamtpunktzahlNichtEnthalten"
                     test="empty(xsc:Gesamtpunktzahl.Note)">Note darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0030-AnschriftMussVorkommen" abstract="true">
         <sch:assert id="SCH-0030-AnschriftMussVorkommen"
                     test="count(xsc:schueler/xbd:anschrift)&gt;=1">Die Anschrfit muss enthalten sein.</sch:assert>
      </sch:rule>
      <!-- /Data/XSchule/Nachweise/schueler.zeugnis.0002 -->
      <sch:rule id="rule-SCH-0001-NameNatuerlichePersonMussVorkommen" abstract="true">
         <sch:assert id="SCH-0001-NameNatuerlichePersonMussVorkommen"
                     test="count(xsc:schueler/xbd:nameNatuerlichePerson)&gt;=1">Der Name muss enthalten sein. Die Multiplizität ist gleich 1..*.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0002-AlternativeRepraesentationNichtEnthalten"
                abstract="true">
         <sch:assert id="SCH-0002-AlternativeRepraesentationNichtEnthalten"
                     test="empty(xbd:alternativeRepraesentation)">Die Alternative Repräsentation darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0003-ExistenzzeitraumNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0003-ExistenzzeitraumNichtEnthalten"
                     test="empty(xbd:existenzzeitraum)">Der Existenzzeitraum darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0004-GeschlechtNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0004-GeschlechtNichtEnthalten" test="empty(xbd:geschlecht)">Das Geschlecht darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0005-NamenssuffixNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0005-NamenssuffixNichtEnthalten" test="empty(xbd:namenssuffix)">Der Namenssuffix darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0006-UnterorganisationNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0006-UnterorganisationNichtEnthalten"
                     test="empty(xbd:unterorganisation)">Unterorganisation darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0007-ArtDerTraegerschaftNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0007-ArtDerTraegerschaftNichtEnthalten"
                     test="empty(xbd:artDerTraegerschaft)">Art der Trägerschaft darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0008-HerkunftsspracheNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0008-HerkunftsspracheNichtEnthalten"
                     test="empty(xsc:herkunftssprache)">Herkunftssprache darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0009-AuskunftssperreNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0009-AuskunftssperreNichtEnthalten"
                     test="empty(xsc:auskunftssperre)">Auskunftssperre darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0010-AngabeWohnungsinhaberNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0010-AngabeWohnungsinhaberNichtEnthalten"
                     test="empty(xbd:Meldeanschrift.Wohnungsinhaber)">Wohnungsinhaber darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0011-KursBeschreibungNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0011-KursBeschreibungNichtEnthalten"
                     test="empty(xbd:Kurs.Beschreibung)">Beschreibung darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0012-KursFachbezeichnungNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0012-KursFachbezeichnungNichtEnthalten"
                     test="empty(xbd:Kurs.Fachbezeichnung)">Fachbezeichnung darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0013-NoteinGesamtpunktzahlNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0013-NoteinGesamtpunktzahlNichtEnthalten"
                     test="empty(xsc:Gesamtpunktzahl.Note)">Note darf nicht enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0014-AnschriftMussVorkommen" abstract="true">
         <sch:assert id="SCH-0014-AnschriftMussVorkommen"
                     test="count(xsc:schueler/xbd:anschrift)&gt;=1">Die Anschrfit muss enthalten sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0015-AufnehmendeSchuleBekanntNichtEnthalten"
                abstract="true">
         <sch:assert id="SCH-0015-AufnehmendeSchuleBekanntNichtEnthalten"
                     test="empty(xsc:schule.aufnehmendeschulebekannt)">Das Atribut "aufnehmendeSchuleBekannt" ist nur für den Nachweis "schueler.wechsel.0001" relevant.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0016-SchulformNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0016-SchulformNichtEnthalten"
                     test="empty(xsc:schule.schulform)">Das Atribut "schulform" ist nur für den Nachweis "schueler.wechsel.0001" relevant.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0017-SchulprofilNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0017-SchulprofilNichtEnthalten"
                     test="empty(xsc:schule.schulprofil)">Das Atribut "schulprofil" ist nur für den Nachweis "schueler.wechsel.0001" relevant.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-SCH-0018-BildungsgangNichtEnthalten" abstract="true">
         <sch:assert id="SCH-0018-BildungsgangNichtEnthalten"
                     test="empty(xsc:schule.bildungsgang)">Das Atribut "bildungsgang" ist nur für den Nachweis "schueler.wechsel.0001" relevant.</sch:assert>
      </sch:rule>
      <!--Konkrete Regeln-->
      <sch:rule context="xsc:schueler.zeugnis.0002">
         <sch:extends rule="rule-SCH-0001-NameNatuerlichePersonMussVorkommen"/>
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
         <sch:extends rule="rule-SCH-0012-KursFachbezeichnungNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0013-NoteinGesamtpunktzahlNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0014-AnschriftMussVorkommen"/>
         <sch:extends rule="rule-SCH-0015-AufnehmendeSchuleBekanntNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0016-SchulformNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0017-SchulprofilNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0018-BildungsgangNichtEnthalten"/>
      </sch:rule>
      <sch:rule context="xsc:schueler.wechsel.0001">
         <sch:extends rule="rule-SCH-0020-NameNatuerlichePersonMussVorkommen"/>
         <sch:extends rule="rule-SCH-0021-AlternativeRepraesentationNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0022-ExistenzzeitraumNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0023-GeschlechtNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0024-NamenssuffixNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0025-UnterorganisationNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0027-KursBeschreibungNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0028-KursFachbezeichnungNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0029-NoteinGesamtpunktzahlNichtEnthalten"/>
         <sch:extends rule="rule-SCH-0030-AnschriftMussVorkommen"/>
      </sch:rule>
   </sch:pattern>
</sch:schema>
