% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2023/10/23 My resume class]

\LoadClass[11pt]{article}


% Required Packages
\RequirePackage[letterpaper, margin=0.5in]{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{tabularx}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage{enumitem}
\RequirePackage{fontawesome}
\input{glyphtounicode}

% Options
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{article}}
\ProcessOptions\relax

% Change pagestyle
\pagestyle{empty}

% Set spacing
\setstretch{.9}
\setlength{\columnsep}{3ex}
\setlength{\multicolsep}{4.0pt plus 2.0pt minus 1.5pt}

% Make sure pdf is parseable
\pdfgentounicode=1

% Define Header Variables
\newcommand{\setname}[1]{\newcommand{\name}{#1}}
\newcommand{\setphone}[1]{\newcommand{\phone}{#1}}
\newcommand{\setemail}[1]{\newcommand{\email}{#1}}
\newcommand{\setlocation}[1]{\newcommand{\location}{#1}}
\newcommand{\setlinkedin}[1]{\newcommand{\linkedin}{#1}}
\newcommand{\setgithub}[1]{\newcommand{\github}{#1}}


\newcommand{\resumeheader}{
\noindent
\begin{tabularx}{\linewidth}{@{\extracolsep{\fill}}*{5}{c@{\extracolsep{\fill}}}}
	\multicolumn{5}{c}{\huge\textbf{\name}} \\
	\faPhone\hspace{.5pt} \@ifundefined{phone}{(123) 456-7890}{\phone} &
	\faEnvelope\hspace{.5pt} \@ifundefined{email}{test@gmail.com}{\email} &
	\faLinkedin\hspace{.5pt} \@ifundefined{linkedin}{linkedin}{\href{https://www.\linkedin}{\linkedin}} &
	\faGithub\hspace{.5pt} \@ifundefined{github}{github}{\href{https://www.\github}{\github}} &
	\faMapMarker\hspace{.5pt} \@ifundefined{location}{location}{\location}
	\\\hline
\end{tabularx}
}

% Section Titles
\newcommand{\sectiontitle}[1]{
\begin{tabularx}{\textwidth}[]{@{}l}
{\large \textbf{#1}} \\\hline
\end{tabularx}
}

\newcommand{\subsectiontitle}[2]{
\begin{tabularx}{\textwidth}{@{}l@{\extracolsep{\fill}}r@{}}
	\textbf{#1} & \textbf{#2} \\
\end{tabularx}
}

\newcommand{\subsectionsubtitle}[2]{
\begin{tabularx}{\textwidth}{@{}l@{\extracolsep{\fill}}r@{}}
	\textit{#1} & #2 \\
\end{tabularx}
}

\newcommand{\gpa}[1]{
\noindent\raggedleft GPA #1\\
}

\newcommand{\projectheading}[3]{
\begin{tabularx}{\textwidth}{@{}l@{\extracolsep{\fill}}r@{}}
	\textbf{#1} -- \textit{#2} & \textbf{#3} \\
\end{tabularx}
}

\newcommand{\resumeitem}[1]{
\item #1
}

\newcommand{\skillitem}[2]{
\item \textbf{#1:} #2
}

\newcommand{\cpp}{C\texttt{++}}

% Define the new list environment
\newenvironment{resumelist}
{
\vspace{-4mm}
\begin{itemize}[noitemsep, nosep,left=4pt, labelsep=2pt]
}
{
\end{itemize}
}

\newenvironment{skilllist}{
\vspace{-5mm}
\begin{multicols}{2}
\begin{itemize}[noitemsep, nosep,left=2pt, labelsep=2pt]
}
{
\end{itemize}
\end{multicols}
}




