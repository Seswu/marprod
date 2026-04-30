---
marp: true
paginate: true
backgroundColor: #ff4fbf
---

# Avocado Case

## Daytona Analytics

---

## Introduktion

- Daytona Analytics
- 7 ugers direkte on-site erfaring
- Besvarer ethvert analysespørgsmål
- ..og vi mener det
- **Alle** spørgsmål

---

## Opgaven

Udforskende undersøgelse bestilt af Denzel Avocado Farms; 6 forkellige (og yderst specifikke) spørgsmål til brug for salgsplanlægningen blandt Michoacán Avocado Farmer's Collective, MAFC.

---

## 1: Udvikling af antal solgte avocadoes

- Plot: Salgsudvikling for avocado-typer
- Datakolonner: Total.Volume, Year, Type
- Filtre: Region = TotalUS, Year != 2018

---


![width:450px](../../content-folder/avocado-case/plots/1_salgsudvikling-for-avocado-typer.svg)


![width:450px](../../content-folder/avocado-case/plots/6_udvikling-i-gennemsnitspris.svg)


---

## Indsigter: Salgsudvikling & Pris

- Stigning i gennemsnitspris for avocadoer af begge typer
- Vægtet gennemsnit pr type pr år
- Salgsvolumen varierer betydeligt over perioden 2015-2017

---

## 2: Udvikling i salgsandele & Forbrug

- Plot: Udvikling i salgsandele for avocado-typer
- Plot: Forbrug af hver avocado-type
- Datakolonner: Total.Volume, AveragePrice, Type
- Filtre: Region = TotalUS, Year != 2018

---


![width:450px](../../content-folder/avocado-case/plots/2_Udvikling-i-salgsandele-for-avocado-typer.svg)


![width:450px](../../content-folder/avocado-case/plots/4_forbrug-af-hver-avocado-type.svg)


---

## Indsigter: Andele & Forbrug

- Conventional vs organic salgsandele over tid
- Forbrug fordelt på avocado-typer
- Organics udgør en mindre men stabil andel

---

## 3: Forbrug ift månedsdag

- Plot: Forbrug ift maanedsdag
- Datakolonner: Total.Volume, Date, AveragePrice
- Filtre: Region = TotalUS, Year != 2018
- Savtakket graf: Variation i forbrug pr år kombineret med cykliske registreringsdage

---

![width:900](../../content-folder/avocado-case/plots/3_forbrug-ift-maanedsdag.svg)

---

## Indsigter: Forbrug ift dage

**Hvor mange penge bruger folk på avocadoer fordelt på dagene i hver måned?**

Der er kun en meget svagt nedadgående tendens; det virker som om forbruget er næsten konstant.

---

## 5: Sammenhæng mellem pris og volumen

- Plot: Sammenhaenge mellem pris og volumen
- Datakolonner: AveragePrice, Total.Volume
- Filtre: Region = TotalUS, Year != 2018

---

![width:900](../../content-folder/avocado-case/plots/5_sammenhaenge-mellem-pris-og-volumen.svg)

---

## Indsigter: Pris vs Volumen

**Sælges der flere når de er billige?**

Ja, mange salg sker ved lav pris. Der er gruppering i punktvisningen:
- Conventionals sælges i store mængder til lav pris
- Organics sælges i mindre mængder til højere priser

Der er variationer inden for dette mønster - måske sæson-betonede.

---

<!-- _backgroundImage: url('../../assets/images/avocado-farming.jpg') -->
<!-- _backgroundSize: cover -->

## Yderligere Analyser

**1: Salgskanaler**
- Vælg optimale salgskanaler ift profitmargen, salgsmængder og pålidelighed
- Pain point analyse til sikring af samarbejdet

**2: Sæsonvariationer**
- Maksimer profit ift sæsonen ved at vælge de rigtige salgspriser
- Time series analyse for at identificere sæsonmønstre

---

<!-- _backgroundImage: url('../../assets/images/avocado-food.jpg') -->
<!-- _backgroundSize: cover -->

## Kontakt

- Daytona Analytics
- 7 ugers direkte on-site erfaring
- Besvarer ethvert analysespørgsmål

**Email:** any-questions-answered@daytona.dk
**Phone:** +45 11 22 33 44
**BlueSky:** #Daytona-Answers-All

---

## Datavalidering

- **Row:** Kun 52 rækker kontra 18.000 linjer data
- **Date:** 4 års data, 2018 kun første 3 måneder, altid 7 dage imellem
- **AveragePrice:** Svinger ml 0.44 og 3.25
- **Total Volume:** Svinger ml 381 og 61 millioner
- **Type:** 'conventional' eller 'organic'

---

## Metode

- Løs datavalidering
- Tolkning af data baseret på formodninger
- Løse spot-checks på formodninger
- Løbende check af om antal behandlede poster er som forventet

---

# Spørgsmål?

## Daytona Analytics

any-questions-answered@daytona.dk
