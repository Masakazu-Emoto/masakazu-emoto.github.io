---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

## Current Positions

- **Specially Appointed Lecturer**, Hitotsubashi Institute for Advanced Study, Hitotsubashi University, April 2023–present
- **Project Researcher**, Graduate School of Economics, the University of Tokyo, July 2025–present  
  Previous appointment: November 2024–March 2025

## Previous Position

- **Specially Appointed Research Associate**, Faculty of Economics, Kanagawa University, April 2022–March 2023

## Education

- Ph.D. in Economics, Kobe University, 2022
- M.A. in Economics, Kobe University, 2019

## Research Fields

Macroeconomics; Public Economics; Heterogeneous-Agent Models; Firm Dynamics; Tax Evasion and Avoidance; Informal Economy

## Peer-Reviewed Publications

{% assign peer_reviewed = site.publications | where: "category", "manuscripts" | sort: "date" | reverse %}
{% for post in peer_reviewed %}
  {% include archive-single-cv.html %}
{% endfor %}

## Working Papers

{% assign working_papers = site.publications | where: "category", "workingpapers" | sort: "order" %}
{% for post in working_papers %}
- [{{ post.title }}]({{ post.url | relative_url }}){% if post.coauthors %}, {{ post.coauthors | replace: "With ", "with " }}{% endif %}
{% endfor %}

## Teaching Experience

- Intermediate Macroeconomics, undergraduate and graduate, Hitotsubashi University, 2026
- Macroeconomics, undergraduate, Kanagawa University, 2022
- Microeconomics, undergraduate, Kanagawa University, 2022

## Grants

- Grant-in-Aid for Early-Career Scientists, JSPS KAKENHI No. 24K16352, April 2024–present
- Murata Science and Education Foundation Research Grant, July 2023–June 2024

## Referee Service

*Macroeconomic Dynamics*; *Mathematical Social Sciences*

## Software

MATLAB; Python; Julia; Fortran; LaTeX
