\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{recipe}[2025/01/29 Recipe class v0.1]

\RequirePackage[a4paper]{geometry}
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
      \Huge \textbf{\@title} \\[1mm]
      \Large \textbf{\@subtitle} \\[1cm]
      \includegraphics[width=0.3\textwidth]{logo.png}

      \begin{tikzpicture}[overlay, remember picture]
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

% TABLE OF CONTENTS
\renewcommand*{\contentsname}{Inhaltsverzeichnis}
