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
\ProvidesClass{KBook}[2017/08/17 Create a book]
\LoadClass[12pt]{book}

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

%\RequirePackage{verbatim} 


\if@compatibility\else
\DeclareOption{a4paper}{%
\setlength{\paperheight}{297mm}%
\setlength{\paperwidth}{210mm}%
}


%when the user use a not existing option
\DeclareOption*{%
}
\fi
\ProcessOptions\relax

\setlength{\textwidth}{6.5in}
\setlength{\textheight}{8in}
\pagenumbering{arabic} % needed even though this class will not show page numbers


\RequirePackage[left=2.5cm,right=1.5 cm,top=2.2 cm,bottom=2 cm,headheight=2cm]{geometry}


% Category counter
\newcounter {catcount}
\setcounter{catcount}{0}

\newcommand\Block[1]{%
%\setlength\fboxsep{0pt} \setlength\fboxrule{0.1pt}% delete
%\mbox{ %delete
\begin{minipage}[c][\dimexpr0.3333333\textheight-2pt\relax][c]{\dimexpr.5\textwidth-10pt\relax}
\centering
#1
\end{minipage}%
%  } %delete
}


\newcommand{\bookTitle}
{

\begin{titlepage}
%%\hrule
%%\vspace{3pt}
%%\hrule
\phantomsection
\addcontentsline{toc}{part}{Book Cover}
\begin{tikzpicture}[remember picture,overlay]

  \node[anchor=north west,minimum width=\textwidth + 2.5cm,minimum height=8cm,fill=blue,text=black] (RB) at (current page.north west){};
  
  \node[anchor=north west,minimum width=\textwidth,minimum height=10cm,fill=blue] (RC) at ([shift={(2.5cm,-9cm)}] RB.south west){}; 
  
  \node[anchor=north west,minimum width=\textwidth] at ([shift={(2.4cm,0.15cm)}] RB.south west) {\the\@image}; 
  
  \node[text=yellow,anchor=north west,minimum width=\textwidth] at ([shift={(2.5cm,5.5cm)}] RB.south west){
  \hfill
  \the\@artxt
  \hfill
  };
  
  \node[text=yellow,anchor=north west,minimum width=\textwidth] at ([shift={(2.5cm,4cm)}] RB.south west){
  \hfill
  \the\@japtxt
  \hfill
  };
    
  \node[text=yellow,anchor=north west,minimum width=18cm] at ([shift={(2.5cm,3cm)}] RB.south west){
  \hfill
  \the\@engtxt
  \hfill
  };
  
  \node[text=yellow,anchor=north west,minimum width=18cm] at ([shift={(2.5cm,2cm)}] RB.south west){
    \hfill
    \the\@frtxt
    \hfill
    };
    
  \node[text=white,text width=8cm,anchor=north west, align=right] at ([shift={(4.5cm,1.8cm)}] RC.south west){
  2013
  \copyright \
  \AR{عبد الكريم عريس}
  };
  
  \node[text=white,text width=8cm,anchor=north west, align=right] at ([shift={(4.5cm,1.2cm)}] RC.south west){
  2013
  \copyright \ Abdelkrime Aries
    };
    
   \node[text=white,text width=8cm,anchor=north west] at ([shift={(13cm,2cm)}] RC.south west){
   \the\@licenceimg
   };
\end{tikzpicture}

\end{titlepage}
\cleardoublepage
}


%\immediate\newwrite\auttable
%\immediate\newwrite\imgcopy


\AtBeginDocument{%
%\openout\auttable=authors.tex
%\openout\imgcopy=LICENSE.img
%
%\write\auttable{\@backslashchar begin{longtable}{llp{10cm}}}
%\write\auttable{\@backslashchar textbf{\@backslashchar Large image} & \@backslashchar textbf{\@backslashchar Large owner}  & \@backslashchar textbf{\@backslashchar Large More info} \@backslashchar\@backslashchar}
%\write\auttable{\@backslashchar endhead}
}

\AtEndDocument{%
%\immediate\closeout\auttable
}

\newcommand{\writeinfo}[4]{
%\write\auttable{#1 & #2  & \@backslashchar getalllinks{#4} \@backslashchar\@backslashchar}
%\write\imgcopy{\the\@imgdir #1 & #2  & #3 & #4}
}

\def\getalllinks#1{%
    \begingroup
    \edef\@tempa{#1+}%
    \expandafter\endgroup
    \expandafter\readlinks\@tempa\relax
}

\def\readlinks#1+#2\relax{%
      \dourl{#1}%  #1 = substr, #2 = rest of string
      \begingroup
      \ifx\relax#2\relax  % is #2 empty?
         \def\next{\endgroup\endtestlinks}% your own end-macro if required
      \else
         \def\next{\endgroup\newline\readlinks#2\relax}%
      \fi
      \next
}
\def\dourl#1{\url{http://commons.wikimedia.org/wiki/File:#1}}
\def\endtestlinks{}
%\def\returntoline{\newline}

\newcommand{\writecatinfo}[1]{
%\write\auttable{&& \@backslashchar\@backslashchar}
%\write\auttable{\@backslashchar multicolumn{3}{l}{#1} \@backslashchar\@backslashchar\@backslashchar hline}
%\write\auttable{&& \@backslashchar\@backslashchar}
}

%\newif\iffirst\firsttrue



\newcommand{\imgdir}[1]
{
\@imgdir={#1}
}

\newcommand{\setimg}[4]
{
\IfFileExists{\the\@imgdir #1}{
 \@image={\includegraphics[width=6.5cm]{\the\@imgdir #1}} %
  \writeinfo{#1}{#2}{#3}{#4}
 }{
 \@image={No image} %
 }
}


\newcommand{\licenceimg}[3]
{

\IfFileExists{#1}{
 \@licenceimg={\includegraphics{#1}} %
 }{
 \@licenceimg={} %
 }
 
}

\newcommand{\authorsthanks}{%
  \immediate\write\auttable{\@backslashchar end{longtable}}
  \immediate\closeout\auttable
  \hrule
  \phantomsection
  \addcontentsline{toc}{part}{Pictures' Credits}
  \begin{flushright}
  {\huge \textbf{Pictures' Credits}}
  \end{flushright}
  \vspace{1cm}
  
  \noindent
 \input{authors}
}


\newcommand{\addref}{}
%----------------------------------

\renewcommand{\chapter}[1]{
\renewcommand{\addref}{
%\phantomsection
%\addcontentsline{toc}{chapter}{\arabic{catcount} - \the\@chaptitle}
\addcontentsline{toc}{chapter}{#1}
\writecatinfo{#1}
}

\cleardoublepage

\noindent
\begin{tikzpicture}
%\addref
%\renewcommand{\addref}{}

\node[anchor=north west,minimum width=\textwidth,minimum height=2cm,fill=blue] (RB) at (current page.north west){
\begin{minipage}[t!]{14cm}
\begin{center}
#1
\end{center}
\end{minipage}	
};

\node[anchor=north west,minimum width=3cm,minimum height=1.5cm,fill=yellow] at ([shift={(0.5cm,1.75cm)}] RB.south west){
	\begin{minipage}[t!]{3cm}
	\begin{center}
	{\fontsize{18pt}{1em}\selectfont\bf \textcolor{blue}{\arabic{catcount}}}
	\end{center}
	\end{minipage}
};

\end{tikzpicture}

}

%============================FRONTMATTER

\renewcommand{\frontmatter}{
\pagenumbering{roman}
\pagestyle{empty}
%\fancyfoot{} 
%\fancyhead{} 
}

%\fancypagestyle{plain}{
%  \fancyhead{}
%  \fancyfoot{}
%  \renewcommand{\headrulewidth}{0pt}
%}

%==========================MAINMATTER


\renewcommand{\mainmatter}{

\cleardoublepage

\pagenumbering{arabic}

\pagestyle{fancy}                       % Sets fancy header and footer
\fancyfoot{}                            % Delete current footer settings
\renewcommand{\headrulewidth}{0pt}

\fancyhead[E]{
\begin{tikzpicture}[remember picture,overlay,shift={(current page.north west)}]
        \node[anchor=north west, minimum width=\textwidth+1.5cm, minimum height=1cm,fill=red] at (0,0){};
        \node[anchor=east,xshift=.1\textwidth+1.5cm, yshift=-1cm,rectangle, rounded corners=10pt,minimum width=2cm, inner sep=6pt, fill=blue]
              {\large \color{white}\textbf{\thepage}};
\end{tikzpicture}
} 

\fancyhead[O]{
\begin{tikzpicture}[remember picture,overlay,shift={(current page.north west)}]
\begin{scope}[xshift= 2.5cm]
 \node[anchor=north west, minimum width=\textwidth+1.5cm, minimum height=1cm,fill=red] at (0,0){};
        \node[anchor=west,xshift=.9\textwidth, yshift=-1cm,rectangle, rounded corners=10pt,minimum width=2cm, inner sep=6pt, fill=blue]
              {\large \color{white}\textbf{\thepage}};
\end{scope}
\end{tikzpicture}
} 

\phantomsection
\addcontentsline{toc}{part}{Edible Plants}
}

%=========Backmatter
\renewcommand{\backmatter}{
\cleardoublepage
\pagestyle{empty} 
%\pagenumbering{roman}
}


\makeatletter
\renewcommand\tableofcontents{%
\hrule
\phantomsection
\addcontentsline{toc}{part}{Table of Content}
\begin{flushright}
{\huge \textbf{Table of Content}}
\end{flushright}
\vspace{1cm}
    \@starttoc{toc}%
}
\makeatother