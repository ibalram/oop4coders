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

\RequirePackage[table]{xcolor}

\RequirePackage{multirow}
\RequirePackage{array}

\RequirePackage{tikz}
\RequirePackage{environ}
%\RequirePackage{cmap}
%\RequirePackage{ruby}
\RequirePackage{xstring}

\RequirePackage{fancyhdr} 
\RequirePackage[T1]{fontenc}

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

\def\ptop{2cm}
\def\pleft{3cm}
\def\pright{1cm}
\def\pbottom{2cm}

%\pagenumbering{arabic} % needed even though this class will not show page numbers
\pagestyle{empty}


\RequirePackage[left=\pleft,right=\pright,top=\ptop,bottom=\pbottom]{geometry}

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


\def\thesection{\arabic{section}}

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

\newfontfamily\merienda
[Path = fonts/Merienda/,
Extension = .ttf,
Ligatures=TeX,
UprightFont=*-Regular,
BoldFont=*-Bold,
Scale=1
]{Merienda} %


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
colframe=black,
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

\newenvironment{discussion}{%
	\section*{Discussion}
	\addcontentsline{toc}{section}{Discussion}
	\markright{Discussion}
}{%
}


\renewcommand{\baselinestretch}{1}

\setlength\parindent{0pt}
\setlength{\parskip}{\baselineskip}%


\RequirePackage{listings}
\RequirePackage{lstlangKB}
\RequirePackage{textcomp} %for textasciitilde

\lstdefinestyle{codeStyle}{
	belowcaptionskip=1\baselineskip,
	breaklines=true,
	frame=L,
	xleftmargin=1.5cm,%\parindent,
	showstringspaces=false,
	basicstyle=\scriptsize\ttfamily\bfseries, %\codefont, 
	keywordstyle=\bfseries\color{blue!70!black}, %green!40!black
	keywordstyle = [2]{\bfseries\color{orange!70!black}},
	keywordstyle = [3]{\bfseries\color{red!70!black}},
	commentstyle=\itshape\color{black!70!white}, %purple!40!black
	identifierstyle=\color{black},%blue
	stringstyle=\color{green!50!black},
	backgroundcolor=\color{indigo!10!white},%blue!5!white
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

\newtoks\@licenseimage
\@licenseimage={}

\def\license#1
{
	\IfFileExists{#1}{
		\@licenseimage={\noindent\includegraphics[width=4cm]{#1} } %
	}{
	\@licenseimage={}
}
}

\newcounter{coverind}

\def\replace#1{%
	\setcounter{coverind}{0}
	\begingroup
	\edef\@tempa{#1 }%
	\expandafter\endgroup
	\expandafter\replaceit\@tempa\relax
}

\def\replaceit#1 #2\relax{%replace blanks in a string
	#1
	\begingroup
	\ifx\relax#2\relax  % is #2 empty?
	\def\next{\endgroup\endit}% your own end-macro if required
	\else
	\def\next{\endgroup\\[0.25cm]\hspace{\arabic{coverind}cm}\replaceit#2\relax}%
	\stepcounter{coverind}%
%	\addtocounter{coverind}{5}
	\fi
	\next
}
\def\endit{}


\def\maketitle {
	\phantomsection
	\addcontentsline{toc}{part}{\@title}
	\begin{tikzpicture}[remember picture,overlay]
	
	\node[inner sep=0] at (current page.center) {\the\@coverimage}; 
	
	\node[anchor=north west,minimum width=1cm,minimum height=12cm,fill=indigo] (vline1)
	at ([shift={(2cm,-2cm)}] current page.north west)
	{}; 
	
	\node[anchor=north west, text=indigo,text width =15cm,fill=white,opacity=0.4,text opacity=1,scale=1.5] (title1) 
	at ([shift={(0.5cm,0cm)}] vline1.north east)
	{
		\bfseries
		\Huge
		\merienda
%		\@title
		\replace\@title
	};

	
	\node[text=white,text width=8cm,anchor=north west, align=left] at ([shift={(0cm, -.5cm)}] vline1.south west){
		\bfseries
		\Huge
		\@author
	};
	
	\node[text=white,text width=8cm,anchor=north west] at ([shift={(-5cm,2cm)}] current page.south east){
		\the\@licenseimage
	};
	\end{tikzpicture}
}

%fancyhdr horizontal rule
\renewcommand{\headrulewidth}{0pt}

\def\frontmatter{
	\cleardoublepage
	\pagenumbering{roman}
	\pagestyle{fancy}
	\phantomsection
	\addcontentsline{toc}{part}{Front Matter}
	\fancyhf{} % sets both header and footer to nothing
	\fancyfoot[CE, CO]{\thepage} 
%	\fancyhead{} 
}


\def\backmatter{
	\cleardoublepage
%	\pagenumbering{roman}
	\pagestyle{empty}
	\phantomsection
	\addcontentsline{toc}{part}{Back Matter}
	%\fancyfoot{} 
	%\fancyhead{} 
}

\renewcommand{\mainmatter}{
	
	\cleardoublepage
	
	\pagenumbering{arabic}
	\phantomsection
	\addcontentsline{toc}{part}{Main Matter}
	
	\pagestyle{fancy}                       % Sets fancy header and footer
%	\fancyfoot{}                            % Delete current footer settings
	
	\fancyhf{}
	
%	\fancyhead[E]{
%		\begin{tikzpicture}[remember picture,overlay,shift={(current page.north west)}]
%		\node[anchor=north west, minimum width=\textwidth+1.5cm, minimum height=1cm,rectangle,very thick,draw=black] at (-2pt,2pt){};
%		\node[anchor=east,xshift=.1\textwidth+1.5cm, yshift=-1cm,minimum width=1.5cm, inner sep=6pt, fill=white]
%		{\large \color{indigo}\textbf{\thepage}};
%		\end{tikzpicture}
%	} 
	
	\fancyhead[E]{
		\begin{tikzpicture}[remember picture,overlay]
		\node[anchor=north west, minimum width=\textwidth+\pright-2pt, minimum height=0.5cm,rectangle,very thick,draw=black] (bx1)
		at ([shift={(0cm,-1cm)}] current page.north west){};
%		
		\node[anchor=west, fill=white,minimum width=1cm]
		at ([shift={(\pright,0cm)}] bx1.north west)
		{\large \color{indigo}\textbf{\thepage}};
%		
		\node[anchor=east,fill=white,align=left]
		at ([shift={(2pt,0cm)}] bx1.south east)
		{\color{indigo}\textbf{\nouppercase{\rightmark}}};
		\end{tikzpicture}
	} 
	
	\fancyhead[O]{
		\begin{tikzpicture}[remember picture,overlay]
		\node[anchor=north west, minimum width=\textwidth+\pright-2pt, minimum height=0.5cm,rectangle,very thick,draw=black] (bx1)
		at ([shift={(\pleft,-1cm)}] current page.north west){};
		%		
		\node[anchor=east, fill=white,minimum width=1cm,align=left]
		at ([shift={(-\pright,0cm)}] bx1.north east)
		{\large \color{indigo}\textbf{\thepage}};
%		%		
		\node[anchor=west,fill=white]
		at ([shift={(-2pt,0cm)}] bx1.south west)
		{\color{indigo}\textbf{\nouppercase{\leftmark}}};
		\end{tikzpicture}
	}
	
%	\fancyhead[O]{
%		\begin{tikzpicture}[remember picture,overlay,shift={(current page.north west)}]
%		\begin{scope}[xshift= 2.5cm]
%		\node[anchor=north west, minimum width=\textwidth+1.5cm, minimum height=1cm,rectangle,very thick,draw=black] at (2pt,2pt){};
%		\node[anchor=west,xshift=.9\textwidth, yshift=-1cm,minimum width=1.5cm, inner sep=6pt, fill=white]
%		{\large \color{indigo}\textbf{\thepage}};
%		\end{scope}
%		\end{tikzpicture}
%	}
	
	\fancypagestyle{plain}{% % <-- this is new
		\fancyhf{} 
		\fancyfoot[LE,RO]{} % same placement as with page style "fancy"
	}
} 


%\RequirePackage[explicit]{titlesec}%
%\RequirePackage{titletoc} %
%
%\titleformat{name = \section, numberless}
%{\ttfamily\Large\bfseries}
%{}
%{0em}
%{\addcontentsline{toc}{section}{#1}#1}%

\RequirePackage{tocloft}


\def\kodetoc{%
	
	\chapter*{Contents}
	
	\renewcommand{\cftpartfont}{\normalfont\sffamily\bfseries}% \part font in ToC
	\renewcommand{\cftchapfont}{\normalfont\large\itshape}    % \chapter font in ToC
	\renewcommand{\cftsecfont}{\normalfont\slshape}           % \section font in ToC
	
	{
		\hypersetup{linkcolor=black}
		\tableofcontents
	}
}

%\RequirePackage{mdframed}
%\RequirePackage{titletoc}
%\RequirePackage{etoolbox}
%
%
%\definecolor{secnum}{RGB}{13,151,225}
%\definecolor{ptcbackground}{RGB}{212,237,252}
%\definecolor{ptctitle}{RGB}{0,177,235}
%
%\pretocmd{\tableofcontents}{\begin{mdframed}[backgroundcolor=ptcbackground,hidealllines=true]}{}{}
%	\apptocmd{\tableofcontents}{\end{mdframed}}{}{}
%\patchcmd{\tableofcontents}{\contentsname}{\color{ptctitle}\contentsname}{}{}
%
%\titlecontents{section}
%[4em]{\sffamily}
%{\color{secnum}\contentslabel{2.3em}\normalcolor}{}
%{\titlerule*[1000pc]{.}\contentspage\\\hspace*{-3em}\vspace*{2pt}%
%	\color{white}\rule{\dimexpr\textwidth-20pt\relax}{1pt}}
%
%\titlecontents{lsection}
%[5.8em]{\sffamily}
%{\color{secnum}\contentslabel{2.3em}\normalcolor}{}
%{\titlerule*[1000pc]{.}\contentspage\\\hspace*{-5.8em}\vspace*{2pt}%
%	\color{white}\rule{\dimexpr\textwidth-15.5pt\relax}{1pt}}
%
%\makeatletter
%\renewcommand*\l@chapter[2]{%
%	\ifnum \c@tocdepth >\m@ne
%	\addpenalty{-\@highpenalty}%
%	\vskip 1.0em \@plus\p@
%	\setlength\@tempdima{1.5em}%
%	\begingroup
%	\parindent \z@ \rightskip \@pnumwidth
%	\parfillskip -\@pnumwidth
%	\leavevmode
%	\advance\leftskip\@tempdima
%	\hskip -\leftskip
%	\colorbox{ptctitle}{\strut%
%		\makebox[\dimexpr\textwidth-2\fboxsep-7pt\relax][l]{%
%			\color{white}\bfseries\sffamily#1%
%			\nobreak\hfill\nobreak\hb@xt@\@pnumwidth{\hss #2}}}\par\smallskip
%	\penalty\@highpenalty
%	\endgroup
%	\fi}
%\makeatother
%\newcommand\PartialToC{%
%	\startcontents[chapters]%
%	\begin{mdframed}[backgroundcolor=ptcbackground,hidealllines=true]
%		\printcontents[chapters]{l}{1}{\colorbox{ptctitle}{%
%				\parbox[t]{\dimexpr\textwidth-2\fboxsep\relax}{%
%					\strut\color{white}\bfseries\sffamily\makebox[5em]{%
%						Chapter~\thechapter\hfill}Contents}}\vskip5pt}
%	\end{mdframed}%
%}

\setcounter{tocdepth}{1}
