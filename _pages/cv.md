---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

<div class="cv-page" markdown="1">

[**Download CV (PDF)**]({{ "/files/Masakazu_Emoto_CV.pdf" | relative_url }})

## Current Positions

- **Specially Appointed Lecturer**, Hitotsubashi Institute for Advanced Study, Hitotsubashi University, April 2023–present
- **Project Researcher**, Graduate School of Economics, The University of Tokyo, July 2025–present

## Previous Positions

- **Project Researcher**, Graduate School of Economics, The University of Tokyo, November 2024–March 2025
- **Specially Appointed Assistant Professor**, Faculty of Economics, Kanagawa University, April 2022–March 2023

## Education

- **Ph.D. in Economics**, Kobe University, 2022  
  Dissertation Advisor: Tamotsu Nakamura  
  Committee: Takashi Kamihigashi, Tomomi Miyazaki
- **M.A. in Economics**, Kobe University, 2019

## Research Fields

Macroeconomics; Public Economics; Heterogeneous-Agent Models; Tax Evasion and Tax Avoidance

<details class="cv-accordion">
<summary class="cv-accordion__summary">Research Activity</summary>
<div class="cv-accordion__content" markdown="1">

### Publication (Peer-Reviewed)

{% assign peer_reviewed = site.publications | where: "category", "manuscripts" | sort: "date" | reverse %}
{% for post in peer_reviewed %}
- {{ post.citation }}
{% endfor %}

### Working Papers

{% assign working_papers = site.publications | where: "category", "workingpapers" | sort: "order" %}
{% for post in working_papers %}
**[{{ post.title }}]({{ post.url | relative_url }})**  
{% if post.coauthors %}{{ post.coauthors }}  
{% endif %}{% if post.wp_series %}{% if post.paperurl %}[{{ post.wp_series }} No. {{ post.wp_number }}]({{ post.paperurl }}){% else %}{{ post.wp_series }} No. {{ post.wp_number }}{% endif %}{% endif %}

{% endfor %}

### Work in Progress

{% assign work_in_progress = site.publications | where: "category", "workinprogress" | sort: "order" %}
{% for post in work_in_progress %}
**[{{ post.title }}]({{ post.url | relative_url }})**  
{% if post.coauthors %}{{ post.coauthors }}{% endif %}

{% endfor %}

</div>
</details>

## Programming and Language Skills

- **Programming:** MATLAB, Python, Julia, Fortran, LaTeX
- **Language:** Japanese (Native)

## Research Grants

- **Grant-in-Aid for Early-Career Scientists**, JSPS KAKENHI No. 24K16352, April 2024–present
- **Murata Science and Education Foundation Research Grant**, July 2023–June 2024

<details class="cv-accordion">
<summary class="cv-accordion__summary">Research Presentations</summary>
<div class="cv-accordion__content" markdown="1">

{% assign international_talks = site.talks | where: "presentation_category", "international" | sort: "date" | reverse %}
{% assign domestic_talks = site.talks | where: "presentation_category", "domestic" | sort: "date" | reverse %}
{% assign workshop_talks = site.talks | where: "presentation_category", "workshop" | sort: "date" | reverse %}

### International Conferences

{% assign current_year = "" %}
{% for post in international_talks %}
  {% assign talk_year = post.date | date: "%Y" %}
  {% if talk_year != current_year %}
#### {{ talk_year }}
    {% assign current_year = talk_year %}
  {% endif %}
  {% include presentation-entry.html post=post %}
{% endfor %}

### Domestic Conferences

{% assign current_year = "" %}
{% for post in domestic_talks %}
  {% assign talk_year = post.date | date: "%Y" %}
  {% if talk_year != current_year %}
#### {{ talk_year }}
    {% assign current_year = talk_year %}
  {% endif %}
  {% include presentation-entry.html post=post %}
{% endfor %}

### Workshops & Seminars

{% assign current_year = "" %}
{% for post in workshop_talks %}
  {% assign talk_year = post.date | date: "%Y" %}
  {% if talk_year != current_year %}
#### {{ talk_year }}
    {% assign current_year = talk_year %}
  {% endif %}
  {% include presentation-entry.html post=post %}
{% endfor %}

</div>
</details>

## Refereeing Services

*Macroeconomic Dynamics*; *Mathematical Social Sciences*

<details class="cv-accordion">
<summary class="cv-accordion__summary">Teaching Experience</summary>
<div class="cv-accordion__content" markdown="1">

### Hitotsubashi University

**2026 — Instructor**
- Intermediate Macroeconomics (Undergraduate and Graduate)

### Kanagawa University

**Spring 2022 — Instructor**
- Macroeconomics (Undergraduate)
- Microeconomics (Undergraduate)

### Kobe University

**Autumn 2021 — Teaching Assistant**
- Macroeconomics I (Core, Graduate)

**April 2021 — Math Camp / Teaching Assistant**
- Math Camp (Graduate)
- Computational Methods in Economics (Graduate)

**Autumn 2020 — Teaching Assistant**
- Macroeconomics IA (Core, Graduate)
- Macroeconomics IB (Core, Graduate)

**April 2020 — Math Camp / Teaching Assistant**
- Math Camp (Graduate)
- Macroeconomics (Graduate)

**Autumn 2019 — Teaching Assistant**
- Quantitative Methods for Monetary Economics (Graduate)
- Macroeconomics IA (Core, Graduate)

**April 2019 — Teaching Assistant**
- Microeconomics IA (Core, Graduate)
- Microeconomics IB (Core, Graduate)

**Autumn 2018 — Teaching Assistant**
- Quantitative Methods for Monetary Economics (Graduate)

**April 2018 — Teaching Assistant**
- Intermediate Macroeconomics (Undergraduate)

</div>
</details>

## References

- **Tamotsu Nakamura**, Professor, Kobe University — [nakamura@econ.kobe-u.ac.jp](mailto:nakamura@econ.kobe-u.ac.jp)
- **Takashi Kamihigashi**, Professor, Kobe University — [tkamihig@rieb.kobe-u.ac.jp](mailto:tkamihig@rieb.kobe-u.ac.jp)
- **Tomomi Miyazaki**, Professor, Kobe University — [miyazaki@econ.kobe-u.ac.jp](mailto:miyazaki@econ.kobe-u.ac.jp)

</div>
