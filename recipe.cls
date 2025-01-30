\LoadClass[a4paper, twoside]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{recipe}[2025/01/29 Recipe class v0.1]

\RequirePackage{graphicx}
\RequirePackage{tikz}

% FONT
\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\setmainfont{Ubuntu}

% COLORS
\RequirePackage{xcolor}
\xdefinecolor{primarycolor}{HTML}{ffff00}
\xdefinecolor{secondarycolor}{HTML}{222021}

% HYPERREF
\RequirePackage{hyperref}

% TITLE
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand*{\@subtitle}{}
\renewcommand*{\maketitle}{%
  \begin{titlepage}
    \begin{center}
      \begin{tikzpicture}[overlay, remember picture]
	\node at (current page.north) [yshift=-8cm] {\Huge \textbf{\@title}};
	\node at (current page.north) [yshift=-9cm] {\Large \textbf{\@subtitle}};
	\node at (current page.north) [yshift=-11cm] {\includegraphics[width=0.3\textwidth]{logo.png}};

	% Yellow box
	\draw[fill=primarycolor, draw=primarycolor] (current page.south west) -- +(\paperwidth,0) -- +(\paperwidth, 10cm) -- +(.8\paperwidth, 9cm) -- +(0.3\paperwidth, 10cm) -- +(0, 9cm) -- cycle;

	% Text within the box
	\node at (current page.south) [yshift=8cm] {\LARGE \textbf{von}};
	\node at (current page.south) [yshift=7cm] {\LARGE \textbf{\@author}};
	\node at (current page.south) [yshift=3cm] {\Large Version: \@date};
	\node at (current page.south) [yshift=2.2cm] {\Large Published in THE LÄND};
      \end{tikzpicture}
    \end{center}
  \end{titlepage}%
}

% HEADER / FOOTER
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[LE,RO]{\@title}
\fancyfoot[C]{\thepage{} von \pageref{LastPage}}

% TABLE OF CONTENTS
\renewcommand*{\contentsname}{Inhaltsverzeichnis}
\setcounter{tocdepth}{2}

% SECTION
\setcounter{secnumdepth}{0} % no numbering
