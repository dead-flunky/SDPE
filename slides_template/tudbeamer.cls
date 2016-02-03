% tudbeamer is the latex-beamer-class as described in the TUD-Design-Manual
% It is based on (makes heavy use of) the latex-beamer-Class beamer
% This class is provided "as is", the authors take no responsibility
% for any effects the style file has on the user, the user's life, family,
% pets, scientific or other career etc.
%
% When making changes to this style file or the accompanying package files
% please notify the authors:
% tud-style@pro-kevin.de
% Good luck!

\def\fileversion{0.1}
\def\filedate{2008/02/13}
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{tudbeamer}
 [\filedate\space\fileversion\space
   Joe Werner's TUD-Design-Manual package]

\PassOptionsToClass{t}{beamer}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{beamer}
  \PassOptionsToPackage{\CurrentOption}{beamerthemeTUD}}
\ProcessOptions

% Load the latex-beamer class
\PassOptionsToClass{10pt}{beamer}
\LoadClass{beamer}

% Some adjustments
\RequirePackage{setspace}
\setstretch{1.1}
\setlength\parskip{0pt}
\setlength\parindent{0pt}

% Load the TUD theme
\AtEndOfClass{\usetheme{TUD}\usepackage{tudcolours}}

\newenvironment{titleframe}%
  {\setbeamertemplate{headline}[TUD title]\begin{frame}[t]%
    \addtolength{\textheight}{-\TUD@largeruleheight-\TUD@smallruleheight-\TUD@ruleskip-\beamer@frametopskip-\TUD@logoboxskip}%
    \vspace*{\TUD@largeruleheight}\vspace*{\TUD@smallruleheight}\vspace*{\TUD@ruleskip}\vspace*{\beamer@frametopskip}\vspace*{\TUD@logoboxskip}}%
  {\end{frame}\setbeamertemplate{headline}[TUD theme]}

\endinput
