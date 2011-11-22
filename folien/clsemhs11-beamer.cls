\ProvidesClass{clsemhs11-beamer}[2011/09/16 yadda yadda]

\LoadClass[t, compress]{beamer}
\RequirePackage[scaled]{helvet}

% Colors
\selectcolormodel{rgb}

\definecolor{SlateGray}{RGB}{"6C, "7B, "8B}
\definecolor{SlateGray4}{RGB}{"6C, "7B, "8B}
\definecolor{AliceBlue}{RGB}{240, 248, 255}
\definecolor{LightSkyBlue}{RGB}{"87, "CE, "FA}
\definecolor{Gray}{gray}{0.5}

\definecolor{TheDarkBlue}{RGB}{"00, "34, "66}
\definecolor{TheLightBlue}{RGB}{"52, "AF, "E0}
\definecolor{TheDarkOrange}{RGB}{"FF, "99, "33}
\definecolor{TheLightOrange}{RGB}{"FF, "CC, "00}
\definecolor{TheLightYellow}{RGB}{"FF, "FF, "00}
\definecolor{TheDarkRed}{RGB}{"99, "00, "00}
\definecolor{TheFloridaBlue}{RGB}{"44, "5A, "B7}

\setbeamercolor*{title}{fg=black}
\setbeamercolor*{subtitle}{fg=black}
\setbeamercolor*{author in head/foot}{bg=TheDarkBlue, fg=white}
\setbeamercolor*{title in head/foot}{bg=TheFloridaBlue, fg=white}
\setbeamercolor*{logo on title page}{bg=white}
\setbeamercolor*{logo in head/foot}{bg=white}
\setbeamercolor*{frametitle}{fg=black}
\setbeamercolor*{section in head/foot}{bg=AliceBlue}
\setbeamercolor*{subsection in head/foot}{bg=LightSkyBlue}
\setbeamercolor*{date in head/foot}{bg=SlateGray}
\setbeamercolor*{itemize item}{fg=black}

% Fonts
\setbeamerfont{title}{size=\Large, series=\bfseries}
\setbeamerfont{frametitle}{size=\Large, series=\bfseries}
\setbeamerfont{author in head/foot}{series=\bfseries}
\setbeamerfont{title in head/foot}{series=\bfseries}

% Logo
\pgfdeclareimage[height=0.5cm]{logo}{uzh_logo_d_pos}
\logo{\pgfuseimage{logo}}

% This hack is to ensure that the text starts *below* the headline
\setbeamertemplate{headline}{\textcolor{white}{\rule{1cm}{6mm}}}

% Title page
\setbeamertemplate{itemize item}[default]
\setbeamertemplate{sections/subsections in toc}[ball]
\setbeamertemplate*{headline}{}
\setbeamertemplate{navigation symbols}{}
% \beamerdefaultoverlayspecification{<+-| alert@+>}
\def\beamer@andinst{\quad }

\setbeamersize{text margin left=0.2cm, text margin right=0.2cm}
\setbeamercovered{transparent}

\newlength\titlevsep\setlength\titlevsep{1ex}

\defbeamertemplate*{title page}{clsemhs11}{%
\vspace{-1cm}
  %\vspace{-2.5mm}
  \leavevmode
  \begin{beamercolorbox}[wd=.35\paperwidth, ht=1.2cm,
    leftskip=1mm]{logo on title page}%
    \includegraphics[height=1cm]{uzh_logo_d_pos}%
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.65\paperwidth, ht=1.2cm,
    leftskip=1.7cm]{title in head/foot}%
  \end{beamercolorbox}
  \par
  \vspace{1cm}
  \begin{beamercolorbox}[vmode, wd=\paperwidth, ht=1cm, leftskip=1.5cm]{title}
    {\usebeamerfont{title}\inserttitle}\\[\titlevsep]
    \ifx\insertsubtitle\@empty\else\vskip0.25em%
    {\usebeamerfont{subtitle}\insertsubtitle\par}%
    \fi\par
  \end{beamercolorbox}

  \begin{beamercolorbox}[wd=\paperwidth, ht=1cm, leftskip=1.5cm]{author}
    {\usebeamerfont{subtitle}\insertauthor}\\
    {\usebeamerfont{institute}\insertinstitute}
  \end{beamercolorbox}
  \par\vfill
  \begin{beamercolorbox}[wd=\paperwidth, ht=1cm, leftskip=1.5cm]{date}
    {\usebeamerfont{date}\insertdate}
  \end{beamercolorbox}%
  \vspace{.374\textheight}%
  \hspace*{.353\paperwidth}%
  \begin{beamercolorbox}[wd=.65\paperwidth, ht=1.7mm, dp=1.125ex]{author
      in head/foot}%
  \end{beamercolorbox}%
}

% Frame titles
\defbeamertemplate{frametitle}{clsemhs11}{%
  \begin{beamercolorbox}[wd=\paperwidth, ht=2em, dp=1.125ex,
    leftskip=2mm, rightskip=.3cm]{frametitle}%
    \usebeamerfont*{frametitle}\usebeamercolor[fg]{frametitle}%
    \insertframetitle%
  \end{beamercolorbox}%
}

% Headline
\defbeamertemplate{headline}{clsemhs11}{%
  \leavevmode%
  \begin{beamercolorbox}[wd=.365\paperwidth, ht=0.6cm, dp=1.125ex,
    leftskip=.3cm,rightskip=.3cm]{logo in head/foot}%
    \insertlogo%
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.65\paperwidth, ht=0.6cm, dp=1.125ex,
    leftskip=.3cm, rightskip=.3cm plus1fil]{title in head/foot}%
    \vspace*{0cm}%
    \usebeamerfont{title in
      head/foot}\insertshorttitle[width=.5\paperwidth]%
  \end{beamercolorbox}%
}

% Footline
\defbeamertemplate{footline}{clsemhs11}{%
  \vspace{-2cm}%
  \leavevmode%
  \begin{beamercolorbox}[wd=.365\paperwidth,
    ht=2.5ex,dp=1.125ex,leftskip=.3cm,rightskip=.3cm]{logo in head/foot}%
    %\usebeamerfont{author in head/foot}\insertshortauthor%
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.65\paperwidth, ht=2.5ex, dp=1.125ex,
    leftskip=.3cm, rightskip=.3cm]{author in head/foot}%
    \usebeamerfont{author in head/foot}\insertshortauthor%
    \usebeamerfont{page number in head/foot}\hfill\insertframenumber%
  \end{beamercolorbox}%
}

% Redefine \maketitle to activate regular templates
\def\maketitle{\ifbeamer@inframe\titlepage\else\frame{\titlepage}\fi%
  \setbeamertemplate{frametitle}[clsemhs11]%
  \setbeamertemplate{headline}[clsemhs11]%
  \setbeamertemplate{footline}[clsemhs11]}


\setbeamertemplate{sidebar right}{% no logo here
  \vfill%
  \vskip2pt%
  \llap{\usebeamertemplate***{navigation symbols}\hskip0.1cm}%
  \vskip2pt%
}
