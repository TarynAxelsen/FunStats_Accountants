--- 
title: "Fundamental Statistics for Accountants"
author: "Dr Taryn Axelsen"
date: "Last Updated: 08 June 2026"
site: bookdown::bookdown_site
documentclass: scrbook
bibliography: [book.bib, packages.bib]
# url: your book url like https://bookdown.org/yihui/bookdown
# cover-image: path to the social sharing image like images/cover.jpg
description: |
  Fundamental Statistics for Accountants Interactive Workbook - containing all extra information and exercises.
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
fontsize: 11pt
header-includes:
  - \usepackage{xcolor}
  - \usepackage{tcolorbox}
  - \usepackage[margin=1in]{geometry}
  - \usepackage{microtype}      # improves spacing and justification
  - \usepackage{parskip}  # adds space between paragraphs, no indentation
  - \usepackage{setspace}
  - \onehalfspacing   # 1.5 line spacing
  - \usepackage{multicol}
  - \usepackage[table]{xcolor}
  - \usepackage{float}
  - \usepackage{amssymb}
  - \newtcolorbox{bannerbox}{colback=blue!5, colframe=blue!70!black, arc=6pt, boxrule=1.2pt, left=12pt, right=12pt, top=12pt, bottom=12pt}
  - \newtcolorbox{tipbox}{colback=green!5, colframe=green!60!black, arc=6pt, boxrule=1pt, left=10pt, right=10pt, top=10pt, bottom=10pt}
  - \newtcolorbox{warningbox}{colback=yellow!10, colframe=orange!80!black, arc=6pt, boxrule=1pt, left=10pt, right=10pt, top=10pt, bottom=10pt}
  - \newtcolorbox{notebox}{colback=gray!10, colframe=gray!70!black, arc=6pt, boxrule=1pt, left=10pt, right=10pt, top=10pt, bottom=10pt}
classoption: oneside
---
<!-- Peter Dunn: Best way I have found to get correct spacing for units in LaTeX, without screwing up HTML -->
\newcommand{\cms}{\,\text{cm}}
\newcommand{\dLs}{\,\text{dL}}
\newcommand{\xdLs}{\text{dL}}
<!-- No space beforehand so useful in place like \\mgs.\\xdLhas^{-1} -->
\newcommand{\fmols}{\,\text{fmol}}
\newcommand{\ft}{\,\text{ft}}
\newcommand{\gs}{\,\text{g}}
\newcommand{\hs}{\,\text{h}}
\newcommand{\xhs}{\text{h}}
<!-- No space beforehand so useful in place like \\km.\\xhs^{-1} -->
\newcommand{\has}{\,\text{ha}}
\newcommand{\xhas}{\text{ha}}
<!-- No space beforehand so useful in place like \\kgs.\\xhas^{-1} -->
\newcommand{\inches}{\,\text{inches}}
\newcommand{\kgs}{\,\text{kg}}
\newcommand{\kms}{\,\text{km}}
\newcommand{\kWhs}{\,\text{kWh}}
\newcommand{\lbs}{\,\text{lb}}
\newcommand{\Ls}{\,\text{L}}
\newcommand{\xLs}{\text{L}} 
<!-- No space beforehand so useful in place like \\microgs.\\xLs^{-1} -->
\newcommand{\checkbox}{\(\square\)}

\newtcolorbox{answerbox}{
  colback=white,
  colframe=black!40,
  boxrule=0.6pt,
  arc=2pt,
  left=6pt,
  right=6pt,
  top=8pt,
  bottom=8pt
}


<!-- ====== Run at start - use Tinytex not Miktek ====== -->
<!--
tinytex_bin <- file.path(tinytex::tinytex_root(), "bin", "windows")
Sys.setenv(PATH = paste(tinytex_bin, Sys.getenv("PATH"), sep = .Platform$path.sep))
Sys.which("xelatex")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
-->

\frontmatter


# Preface {-}

<!-- ====== COLOURED BANNER ====== -->
<!--
::: {.welcomeBox}
## **Welcome to _Fundamental Statistics for Accountants_**{-}

This interactive Workbook is your companion for the **learning through doing** component of the course.   It is designed to guide your practice, deepen your understanding, and support your progress throughout the semester.
:::
-->


<div style="
  background: linear-gradient(90deg, #e6f0ff, #f7fbff);
  border-left: 8px solid #2a7ae2;
  padding: 18px;
  border-radius: 6px;
  margin: 20px 0;
">
  <strong style="color:#1a4f8b; font-size:1.1em;">
    Welcome to Fundamental Statistics
  </strong>
  <p style="margin-top:8px;">This interactive Workbook is your companion for the **learning through doing** component of the course.   It is designed to guide your practice, deepen your understanding, and support your progress throughout the semester.</p>
  
</div>
<!-- ====== END BANNER ====== -->

The primary learning resource for the course is the lectures and tutorials, however we do have an accompanying textbook **Sharpe, De Veaux & Velleman,
*Business Statistics* (4th edition)**. We do not cover the whole textbook in this
course or in the order it is presented in the book. You are directed to the relevant
readings from the textbook at the end of each chapter within this interactive Workbook.

Once you have watched the content recordings, you should consolidate your understanding
by working through the material and tutorials in this interactive Workbook. The textbook
readings will give you further knowledge and help to really solidify the materials
covered each week.

The tutorials align with the modules covered in this course as listed in the *Course Specification*. At the end of each tutorial you will notice a *Module Checklist* and, in
some cases, a *Using Excel Checklist*. Use these checklists to make sure that you have not missed an important concept as you work through the materials.

## 📊 Why Statistics Matters to Accountants {-}

Statistics helps us make sense of the information we encounter every day.  
At the heart of statistics is **data**, and the need to understand that data is what drives this entire field. The goal in this course is to give you tools to enable you to competently use and interpret statistics.

Accounting is not just about recording numbers - it is about **interpreting information, making judgements, and supporting decisions under uncertainty**. Statistics provides the tools accountants need to do this rigorously and responsibly.

## Threshold / Expanded Competencies {-}

To help guide you through this course and prevent the need to cram or skip material, we have developed a THRESHOLD / EXPANDED competencies framework. All materials in this course have been broken into THRESHOLD competencies and EXPANDED competencies.




<div style="
  background: #f0fff4;
  border-left: 8px solid #2a9d8f;
  padding: 18px;
  border-radius: 6px;
  margin: 20px 0;
">
  <strong style="color:#1b7f5f; font-size:1.1em;">
    💡 Think of statistics like a toolbox.
  </strong>
  <p style="margin-top:8px;">A good toolbox needs a hammer, pliers, a wrench, and a screwdriver.

Likewise, in this course there are some concepts and skills which are essential for you to master — we call these **Threshold Competencies**.

To pass the course, you’ll need to demonstrate a full understanding of these Threshold Competencies.</p>
  
</div>

*   **Threshold competencies** in STA1004 refer to the key or fundamental ideas that are the core essential knowledge that a passing student must master.

*   Additional knowledge and skills associated with these concepts are referred to as **Expanded competencies**, which represent the knowledge required to achieve higher than a Pass (P) grade.  

*   Mastery of expanded material will help students achieve a higher grade than a passing grade.

In this interactive Workbook, material related to **Expanded Competencies** are marked with an asterisk (*).

The goal of the Threshold/Expanded framework for delivering and assessing content is to provide students with a structure that allows for incremental mastery and achievement, building student confidence and momentum throughout the course. If you are feeling overwhelmed with a particular module of content, or if you are struggling to balance competing priorities in your life at some stage in the trimester, you can focus on mastering the Threshold content and still be able to continue progressing through the course. You can attempt the Expanded content once you feel grounded in the Threshold material or if you have more time for study later in the trimester.

## What This Course Focuses On {-}

The emphasis in Fundamental Statistics for Accountants is on:

- understanding and developing the basic concepts of statistical reasoning  
- learning to use statistical software  

The broad objectives of this course are stated below. More detailed overall objectives
are given in the Course Specification. Specific objectives for each module are stated
at the start of each module in the lectures.

Best wishes and good studying!

## Overall Learning Outcomes {-}

On completion of this course students should be able to:

1. Identify, explain and analyse the role of statistics in decision making (TCA08:LO1) (BBCM PO4).

2.  Analyse and evaluate financial and non-financial data from a variety of sources using appropriate tools to present results in tables and charts as well as numerical descriptive measures for business decision-making purposes (TCA08: LO2, LO3 and LO4; PCA01: LO1) (BBCM PO3 or PO4).

3.  Communicate clearly, effectively and concisely when presenting and discussing results from the analysis of data (PCA02: LO2) (BBCM PO3).

4.  Use problem-solving skills, including a selection of parametric and non-parametric tests to analyse, apply and interpret appropriate confidence interval and hypothesis testing procedures for given business data and identify applications to business problems to measure and reduce uncertainty (TCA08: LO3) (BBCM PO1 or PO4).

5.  Apply thinking skills to solve problems through identifying, making decisions and reaching well-reasoned conclusions applying the relevant regression and correlation coefficients for a data set using Excel and identify ethical issues within a given business situation. (TCA08: LO4; PCA01: LO2, PCA04: LO4) (BBCM PO1 or PO2 or PO4).

6.  Apply basic regression and time series forecasting tools to business problems and identify ethical issues to social responsibility within the business environment. (CPA/NZ PCA04: LO4) (BBCM PO4).

## How this book was made {-}

This book was made using **R** [@R-base], and the **bookdown** package [@R-bookdown], which is based on [Markdown](https://en.wikipedia.org/wiki/Markdown) syntax, using **knitr** [@R-knitr].

These tools allow us to build a clean, interactive, and reproducible learning resource.

### Author{-}
Dr Taryn Axelsen (Springfield, Australia)

<!-- 
```{=html}
<button onclick="resetAllAnswers()"
        style="margin:10px 0; padding:8px 14px;">
Reset all answers in this workbook
</button>
```
-->


<button onclick="resetAllAnswers()"
        style="margin:10px 0; padding:8px 14px;">
Reset all answers in this workbook
</button>


\mainmatter 





