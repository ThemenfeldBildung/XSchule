<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            queryBinding="xslt2">
   <sch:ns prefix="dinspec91379"
           uri="urn:xoev-de:kosit:xoev:datentyp:din-spec-91379_2019-03"/>
   <sch:ns prefix="ds" uri="http://www.w3.org/2000/09/xmldsig#"/>
   <sch:ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
   <sch:ns prefix="xbd" uri="http://xbildung.de/def/xbildung/0.93/xsd"/>
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
   <sch:ns prefix="xsc" uri="http://xschule.digital/def/xschule/0.4/xsd"/>
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
                     test="not(empty(xsc:schueler[1]/xbd:anschrift[1]/xbd:wohnort[1]))">Der Wohnort vom Zeugnisinhabenden muss angegeben werden.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0002-0100-MUSS-BildungseinrichtungName" abstract="true">
         <sch:assert id="XSC-0002-0100-MUSS-BildungseinrichtungName"
                     test="not(empty(xsc:schule[1]/xbd:name[1]/xbd:name[1]))">Der Name der Bildungseinrichtung, die das Zeugnis ausstellt, muss angegeben werden.</sch:assert>
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
      <!-- /Data/XSchule/Nachweise/schueler.zeugnis.0003 -->
      <sch:rule id="rule-XSC-0003-0010-MUSS-Vorname" abstract="true">
         <sch:assert id="XSC-0003-0010-MUSS-Vorname"
                     test="not(empty(xsc:schueler[1]/xbd:nameNatuerlichePerson[1]/xbd:vorname[1]/xbd:name[1]))">Der Vorname vom Zeugnisinhabenden muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0003-0011-MUSS-Familienname" abstract="true">
         <sch:assert id="XSC-0003-0011-MUSS-Familienname"
                     test="not(empty(xsc:schueler[1]/xbd:nameNatuerlichePerson[1]/xbd:familienname[1]/xbd:name[1]))">Der Familienname vom Zeugnisinhabenden muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0003-0012-MUSS-Geburtsort" abstract="true">
         <sch:assert id="XSC-0003-0012-MUSS-Geburtsort"
                     test="not(empty(xsc:schueler[1]/xbd:geburt[1]/xbd:geburtsort[1]/xbd:ort[1]))">Der Geburtsort vom Zeugnisinhabenden muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0003-0013-MUSS-Geburtstag" abstract="true">
         <sch:assert id="XSC-0003-0013-MUSS-Geburtstag"
                     test="not(empty(xsc:schueler[1]/xbd:geburt[1]/xbd:datum[1]))">Das Geburtsdatum vom Zeugnisinhabenden muss angegeben sein.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0003-0015-MUSS-Wohnort" abstract="true">
         <sch:assert id="XSC-0003-0015-MUSS-Wohnort"
                     test="not(empty(xsc:schueler[1]/xbd:anschrift[1]/xbd:wohnort[1]))">Der Wohnort vom Zeugnisinhabenden muss angegeben werden.</sch:assert>
      </sch:rule>
      <sch:rule id="rule-XSC-0003-0100-MUSS-BildungseinrichtungName" abstract="true">
         <sch:assert id="XSC-0003-0100-MUSS-BildungseinrichtungName"
                     test="not(empty(xsc:schule[1]/xbd:name[1]/xbd:name[1]))">Der Name der Bildungseinrichtung, die das Zeugnis ausstellt, muss angegeben werden.</sch:assert>
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
      </sch:rule>
      <sch:rule context="xsc:schueler.zeugnis.0003">
         <sch:extends rule="rule-XSC-0003-0010-MUSS-Vorname"/>
         <sch:extends rule="rule-XSC-0003-0011-MUSS-Familienname"/>
         <sch:extends rule="rule-XSC-0003-0012-MUSS-Geburtsort"/>
         <sch:extends rule="rule-XSC-0003-0013-MUSS-Geburtstag"/>
         <sch:extends rule="rule-XSC-0003-0015-MUSS-Wohnort"/>
         <sch:extends rule="rule-XSC-0003-0100-MUSS-BildungseinrichtungName"/>
      </sch:rule>
   </sch:pattern>
</sch:schema>
