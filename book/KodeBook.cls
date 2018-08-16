%
%    Copyright (C) 2017  Abdelkrime Aries <kariminfo0@gmail.com>
%
%    This program is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with this program.  If not, see <http://www.gnu.org/licenses/>.

\NeedsTeXFormat{LaTeX2e} %[2009/09/24]
\ProvidesClass{KodeBook}[2017/08/17 Create a book with codes]
\LoadClass[12pt, a4paper]{book}

\raggedbottom

%\RequirePackage[utf8]{inputenc}
%\RequirePackage[arabic,french,english]{babel}
%\RequirePackage{CJKutf8}

\RequirePackage{multirow}
\RequirePackage{array}

\RequirePackage{tikz}
\RequirePackage{environ}
%\RequirePackage{cmap}
%\RequirePackage{ruby}
\RequirePackage{xstring}

\RequirePackage{fancyhdr} 
\RequirePackage[T1]{fontenc}
\RequirePackage{xcolor}

\definecolor{indigo}{RGB}{75,0,130}%indigo
%\definecolor{purpleX11}{RGB}{160,32,240}
\definecolor{Crimson}{rgb}{0.6471, 0.1098, 0.1882}

%\RequirePackage{verbatim} 


%
%\if@compatibility\else
%
%\DeclareOption{a4paper}{%
%\setlength{\paperheight}{297mm}%
%\setlength{\paperwidth}{210mm}%
%}
%
%
%%when the user use a not existing option
%\DeclareOption*{%
%}
%
%\fi
%
%\ProcessOptions\relax
%
%\setlength{\textwidth}{6.5in}
%\setlength{\textheight}{8in}
\pagenumbering{arabic} % needed even though this class will not show page numbers


\RequirePackage[left=2.5cm,right=1.5 cm,top=2.2 cm,bottom=2 cm,headheight=2cm]{geometry}

\RequirePackage[Glenn]{fncychap}
\ChTitleVar{\bfseries\Large\scshape\color{indigo}}
\ChNumVar{\bfseries\Huge\color{indigo}}
\ChNameVar{\bfseries\Large\color{indigo}}

\RequirePackage{etoolbox}

%\makeatletter
\patchcmd{\@makechapterhead}{\vspace*{50\p@}}{\vspace*{-40\p@}}{}{}
\patchcmd{\@makeschapterhead}{\vspace*{50\p@}}{\vspace*{-40\p@}}{}{}
\patchcmd{\DOTI}{\vskip 80\p@}{\vskip 20\p@}{}{}
\patchcmd{\DOTIS}{\vskip 40\p@}{\vskip 0\p@}{}{}
%Color
\patchcmd{\DOCH}{\mghrulefill}{\color{black}\mghrulefill}{}{}
\patchcmd{\DOTIS}{\mghrulefill}{\color{black}\mghrulefill}{}{}
\patchcmd{\DOTI}{\mghrulefill}{\color{black}\mghrulefill}{}{}
%\makeatother

%Quotes, introduction
\RequirePackage[many]{tcolorbox}


% Chapter counter
%\newcounter {chapcount}
%\setcounter{chapcount}{0}
%
%
%\def\@chapter[#1]#2{
%
%\cleardoublepage
%\thispagestyle{plain}
%
%\refstepcounter{chapter}
%
%\addcontentsline{toc}{chapter}%
%{\protect\numberline{\thechapter}#1}
%
%\noindent
%\begin{tikzpicture}
%
%\node[anchor=north west,minimum width=\textwidth,minimum height=2cm,fill=blue] (RB) at (current page.north west){
%\begin{minipage}[t!]{14cm}
%\begin{center}
%\huge\bfseries\textcolor{yellow}{#1}
%\end{center}
%\end{minipage}	
%};
%
%\node[anchor=north west,minimum width=3cm,minimum height=1.5cm,fill=yellow] at ([shift={(0.5cm,1.75cm)}] RB.south west){
%	\begin{minipage}[t!]{3cm}
%	\begin{center}
%	\huge\bfseries\textcolor{blue}{\Roman{chapter}}
%	\end{center}
%	\end{minipage}
%};
%
%\end{tikzpicture}
%
%}
%
%
%\def\@schapter#1 {
%	\cleardoublepage
%	\thispagestyle{plain}
%	\noindent
%	\begin{tikzpicture}
%	
%	\node[anchor=north west,minimum width=\textwidth,minimum height=2cm,fill=blue] (RB) at (current page.north west){
%		\begin{minipage}[t!]{14cm}
%		\begin{center}
%		\huge\bfseries #1
%		\end{center}
%		\end{minipage}	
%	};
%	
%	\end{tikzpicture}
%}

\def\thesection{\arabic{section}}

%\newenvironment{introduction}
%{
%	\begin{center}
%	\itshape \small
%	\bfseries \color{blue}
% 
%}
%{
%};
%	\end{center}
%}


\renewcommand{\@listI}{%
	\leftmargin=25pt
	\rightmargin=0pt
	\labelsep=5pt
	\labelwidth=20pt
	\itemindent=0pt
	\listparindent=0pt
	\topsep=0pt plus 2pt minus 4pt
	\partopsep=0pt plus 1pt minus 1pt
	\parsep=0pt plus 1pt
	\itemsep=\parsep
}


\RequirePackage{fontspec}
\defaultfontfeatures{Mapping=tex-text}

\setmainfont
[Path = fonts/CrimsonText/,
Extension = .ttf,
Ligatures=TeX, 
UprightFont=*-Regular,
BoldFont=*-Bold,
ItalicFont=*-Italic,
BoldItalicFont=*-BoldItalic
]{CrimsonText} %

\newfontface\merienda
[Path = fonts/Merienda/,
Extension = .ttf,
Ligatures=TeX,
Scale=1
]{Merienda-Regular} %


\newfontface\quotefont
[Path = fonts/Handlee/,
Extension = .ttf,
Ligatures=TeX,
Scale=1.
]{Handlee-Regular} %



\newfontface\codefont
[Path = fonts/SourceCodePro/,
Extension = .ttf,
Ligatures=TeX
%Scale=1.5
]{SourceCodePro-Bold} %

%\newfontface\codefont
%[Path = fonts/Inconsolata/,
%Extension = .ttf,
%Ligatures=TeX
%%Scale=1.5
%]{Inconsolata-Bold} %

% ============================================



\newtcolorbox{kodequote}[1]{%
colback=white,
colframe=indigo,
colbacktitle=indigo!10!white,
coltitle=indigo,
fontupper=\quotefont,
title={#1}
}

\newtcolorbox{introduction}{
	enhanced jigsaw,
	oversize,
	rightrule=0pt,
	toprule=0pt,
	bottomrule=0pt,
	leftrule=8pt,
	colback=white,
	colframe=indigo,
	arc=0pt,
	outer arc=0pt,
%	title={Remarque :},
%	title style={white},
%	fonttitle=\color{black}\bfseries,
	titlerule=0pt,
	bottomtitle=0pt,
	top=0pt,
	bottom=0pt,
	left=0pt,
	enlarge left by=.25\textwidth,
	width=0.75\textwidth,
	fontupper=\itshape
}


\renewcommand{\baselinestretch}{1}

\setlength\parindent{0pt}
\setlength{\parskip}{\baselineskip}%


\RequirePackage{listings}
\RequirePackage{textcomp} %for textasciitilde

\lstdefinestyle{codeStyle}{
	belowcaptionskip=1\baselineskip,
	breaklines=true,
	frame=L,
	xleftmargin=1.5cm,%\parindent,
	showstringspaces=false,
	basicstyle=\scriptsize\ttfamily\bfseries, %\codefont, 
	keywordstyle=\bfseries\color{green!40!black},
	commentstyle=\itshape\color{purple!40!black},
	identifierstyle=\color{blue},
	stringstyle=\color{orange},
	backgroundcolor=\color{blue!10!white},
	lineskip=.2em,
	numbers=left
	%  frameround=tttt
}

\lstdefinestyle{shellStyle}{
	belowcaptionskip=1\baselineskip,
	breaklines=true,
	frame=shadwbox,
	rulesepcolor=\color{blue},
	xleftmargin=1.25cm,
	basicstyle=\scriptsize\codefont\color{green},
	backgroundcolor=\color{black},
	lineskip=.2em
	%	morekeywords={sudo},keywordstyle=\color{red},
	%  frameround=tttt
}


\def\keyword#1{{\itshape\bfseries\color{blue} #1}}

\def\nameword#1{{\itshape\bfseries\color{red} #1}}

%=======================================================
%===================== COVER ===========================
%=======================================================

\newtoks\@coverimage
\@coverimage={}

\def\cover#1
{
	\IfFileExists{#1}{
		\@coverimage={\noindent\includegraphics[width=\paperwidth, height=\paperheight]{#1} } %
	}{
	\@coverimage={}
}
}

\def\maketitle {
	\addcontentsline{toc}{part}{Book}
	\begin{tikzpicture}[remember picture,overlay]
	
	\node[inner sep=0] at (current page.center) {\the\@coverimage}; 
	
	\node[anchor=north west,minimum width=1cm,minimum height=6cm,fill=indigo] (vline1)
	at ([shift={(2cm,-2cm)}] current page.north west)
	{}; 
	
	\node[anchor=north west, text=indigo,text width =15cm,fill=white,opacity=0.4,text opacity=1,scale=1.2] (title1) 
	at ([shift={(0.5cm,0cm)}] vline1.north east)
	{
		\bfseries
		\Huge
		\@title
	};

	
	\node[text=white,text width=8cm,anchor=north west, align=left] at (vline1.south west){
		\bfseries
		\Huge
		\@author
	};
	
%	\node[text=white,text width=8cm,anchor=north west] at ([shift={(13cm,2cm)}] RC.south west){
%		\the\@licenceimg
%	};
	\end{tikzpicture}
}


\def\frontmatter{
	\pagenumbering{roman}
	\pagestyle{empty}
	%\fancyfoot{} 
	%\fancyhead{} 
}

\renewcommand{\mainmatter}{
	
	\cleardoublepage
	
	\pagenumbering{arabic}
	
	\pagestyle{fancy}                       % Sets fancy header and footer
%	\fancyfoot{}                            % Delete current footer settings
	\renewcommand{\headrulewidth}{0pt}
	
	\fancyhf{}
	
	\fancyhead[E]{
		\begin{tikzpicture}[remember picture,overlay,shift={(current page.north west)}]
		\node[anchor=north west, minimum width=\textwidth+1.5cm, minimum height=1cm,rectangle,very thick,draw=black] at (-2pt,2pt){};
		\node[anchor=east,xshift=.1\textwidth+1.5cm, yshift=-1cm,minimum width=1.5cm, inner sep=6pt, fill=white]
		{\large \color{indigo}\textbf{\thepage}};
		\end{tikzpicture}
	} 
	
	\fancyhead[O]{
		\begin{tikzpicture}[remember picture,overlay,shift={(current page.north west)}]
		\begin{scope}[xshift= 2.5cm]
		\node[anchor=north west, minimum width=\textwidth+1.5cm, minimum height=1cm,rectangle,very thick,draw=black] at (2pt,2pt){};
		\node[anchor=west,xshift=.9\textwidth, yshift=-1cm,minimum width=1.5cm, inner sep=6pt, fill=white]
		{\large \color{indigo}\textbf{\thepage}};
		\end{scope}
		\end{tikzpicture}
	}
	
	\fancypagestyle{plain}{% % <-- this is new
		\fancyhf{} 
		\fancyfoot[LE,RO]{} % same placement as with page style "fancy"
	}
} 
