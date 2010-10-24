\NeedsTeXFormat{LaTeX2e}

% 22 Oct 2010 : GWA : New proposal class. Originally based on the
%               proposalnsf.cls file downloaded from here:
% http://www-pord.ucsd.edu/~sgille/how_to/proposal_prep.html

\RequirePackage{color}
\RequirePackage{calc}
\RequirePackage{mathpazo}
\ProvidesClass{nsfproposal}[2010/10/22 GWA NSF Proposal Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions
\LoadClass[12pt,onecolumn,oneside,final]{memoir}

% 22 Oct 2010 : GWA : Set up simple chapter headings.

\chapterstyle{article}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\paperheight}{11in}
% \setlength{\paperwidth}{8.5in}

\setstocksize{11in}{8.5in}
\settrimmedsize{11in}{8.5in}{*}
\settrims{0pt}{0pt}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\textwidth}{\paperwidth - 2in}
% \setlength{\textheight}{\paperheight - 2in}

%\settypeblocksize{9in}{6.5in}{*}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\oddsidemargin}{1in}
% \setlength{\evensidemargin}{1in}

\setlrmarginsandblock{1in}{1in}{*}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\topmargin}{1in}
% \setlength{\headheight}{0pt}
% \setlength{\headsep}{0pt}

\setulmarginsandblock{1in}{1in}{*}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\footskip}{36pt}
% \setlength{\headheight}{0pt}

\setheadfoot{0pt}{36pt}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\marginparsep}{0.5cm}
% \setlength{\marginparwidth}{1.5cm}

\setmarginnotes{0.5cm}{1.5cm}{0.1cm}

% 22 Oct 2010 : GWA : memoir command to actually apply the layout.

\checkandfixthelayout

% 22 Oct 2010 : GWA : Proposal page style.

\makepagestyle{proposal}
  \makeevenfoot{proposal}{}{\thepage}{}
  \makeevenhead{proposal}{}{}{}
  \makeoddfoot{proposal}{}{\thepage}{}
  \makeoddhead{proposal}{}{}{}

\let\@internalcite\cite
  \def\fullcite{\def\citeauthoryear##1##2##3{##1, ##3}\@internalcite}
  \def\fullciteA{\def\citeauthoryear##1##2##3{##1}\@internalcite}
  \def\shortcite{\def\citeauthoryear##1##2##3{##2, ##3}\@internalcite}
  \def\shortciteA{\def\citeauthoryear##1##2##3{##2}\@internalcite}
  \def\citeyear{\def\citeauthoryear##1##2##3{##3}\@internalcite}

\makechapterstyle{proposal}{%
  \renewcommand{\chapterheadstart}{} 
  \renewcommand{\printchaptername}{} 
  \renewcommand{\chapternamenum}{} 
  \renewcommand{\printchapternum}{} 
  \renewcommand{\afterchapternum}{} 
  \renewcommand{\printchaptertitle}[1]{%
    \Large\scshape\MakeUppercase{##1}
  } 
  \renewcommand{\afterchaptertitle}{\vspace{0.5\onelineskip} \hrule \vspace{0.5\onelineskip}}
} 
\definecolor{shadecolor}{gray}{0.9}
\newcommand{\proposalsec}[1]{%
  \large\bfseries\raggedright #1
}
\setsecheadstyle{\proposalsec}
\nonzeroparskip
\setlength{\parindent}{0pt}
\renewcommand{\thesection}{\arabic{section}}
\chapterstyle{proposal}
\setsecnumformat{\csname the#1\endcsname\space---\space}
