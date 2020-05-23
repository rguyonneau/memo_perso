\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{notebook}[2020/05/11 Classe Notebook, V1.0]

% classe de base

\LoadClass[a4paper, 11pt]{article}

% extensions


\RequirePackage[utf8]{inputenc}
\RequirePackage[francais]{babel}
\RequirePackage{hyperref} % pour gérer les urls
\RequirePackage[margin=2cm]{geometry} % pour la gestion des marges du document
\RequirePackage{listings} % pour gérer la mise en page du code
\RequirePackage{color} % pour gérer les couleurs dans le document
\RequirePackage{graphicx} % pour les images
\RequirePackage{framed,color,verbatim} % pour le format "terminal"

%\RequirePackage{fancyvrb}
%\RequirePackage{fvextra}


% commandes personnelles

\definecolor{gray}{rgb}{0.95, 0.95, 0.95} % définition de la couleur gray
\definecolor{blue}{rgb}{0.10, 0.10, 0.70} % définition de la couleur blue
\definecolor{shadecolor}{rgb}{.2, .2, .2}

% defintion des couleurs pour les zones de code
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codelightgray}{rgb}{0.97,0.97,0.97}
\definecolor{codedarkgray}{rgb}{0.6,0.6,0.6}
\definecolor{codeblue}{rgb}{0.10, 0.10, 0.70}
\definecolor{codepurple}{rgb}{0.58,0,0.82}

% pour les zones de code
\lstdefinestyle{mycodestyle}{
    backgroundcolor=\color{codelightgray},   
    commentstyle=\color{codedarkgray},
    keywordstyle=\color{codeblue},
    numberstyle=\tiny\color{codedarkgray},
    stringstyle=\color{codegreen},
    basicstyle=\ttfamily,                   
    numbers=left,                    
    numbersep=5pt,
    upquote=true,
    columns=flexible
}

% pour pouvoir afficher du code latex dans un lstlisting
\lstnewenvironment{TeXlstlisting}{\lstset{language=[LaTeX]TeX}}{}

\lstset{style=mycodestyle}

\setlength\parindent{0pt} % pas d'indentation sur tout le fichier
\setlength{\parskip}{5pt} % taille des espaces entre les paragraphes

\newcommand{\horizontalline}[1]{{\color{#1}\rule{\linewidth}{0.5mm}}}


% pour le titre
\renewcommand\maketitle{{
    \horizontalline{blue}
    \raggedright % Note the extra {
    {\Large \color{blue} Cahier de notes}\\[2ex] 
    \begin{center}
        {\Huge \bfseries \@title }\\[2ex] 
        {\Large  \@author}\\[2ex] 
        \begin{flushright}
            Dernière mise à jour: \@date\\[2ex]
        \end{flushright}
    \end{center}
    \horizontalline{blue}
}} % Note the extra }

%\newenvironment{terminal}%
%   {\snugshade\verbatim\color{white}}%
%   {\endverbatim\endsnugshade}

%\newenvironment{terminal}
%    {\begin{verbatim}}
%    {\end{verbatim}}

% exemple trouve ici: https://tex.stackexchange.com/questions/309042/how-can-i-redefine-verbatim-to-wrap-lines-add-break-before-or-after-spaces
\newenvironment{terminal}
 {\snugshade\def\@xobeysp{\ }\verbatim\rightskip=0pt plus 6em\relax\color{white}}
 {\endverbatim\endsnugshade}

