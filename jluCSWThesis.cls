\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jluCSWThesis}
	[2024/05/04 v0.01 JLU CSW 2024 Undergraduate Template]


%-------- Options --------%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

\ProcessOptions\relax

%-------- Base Class --------%
\LoadClass[fontset=windows, zihao=-4]{ctexbook}

%-------- Packages --------%

% geometry
\RequirePackage{calc}
\RequirePackage[
	a4paper,
	top=2cm,
	bottom=2cm,
	left=3cm,
	right=3cm,
	headheight=1.5cm,
	headsep=0.2cm
]{geometry}

% Math
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}

% font
\RequirePackage{fontspec}

% header & footer
\RequirePackage{fancyhdr}

% toc
\RequirePackage{tocloft}

% figure & color
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{float}
\RequirePackage{caption}

% code fence & tikz draw
\RequirePackage{tikz}
\RequirePackage{algorithm}
\RequirePackage{algorithmic}

% cite & reference
\RequirePackage[style=gb7714-2015]{biblatex}
\RequirePackage{hyperref}
\renewcommand{\bibfont}{\small}
\addbibresource{references.bib}

% misc
\RequirePackage{lipsum}
\RequirePackage{zhlipsum}

%-------- Links ---------%
\hypersetup{hidelinks} % link's colorful border

%-------- Fonts --------%
% chinese
\setCJKmainfont{SimSun}[AutoFakeBold]

\setCJKfamilyfont{song}{SimSun}[AutoFakeBold]
\newcommand{\song}{\CJKfamily{song}}

% English & number
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}


%-------- line space --------%
\linespread{1.5}


%-------- header & footer --------%
\newcommand{\JLUrightmark}{吉林大学\ 软件学院\ 毕业论文}

\fancypagestyle{plain}{
	\fancyhf{}
	\fancyhead[CO]{\kaishu\JLUrightmark}
	\fancyhead[CE]{\kaishu\JLUrightmark}

	\fancyfoot[R] {\kaishu\footnotesize\thepage}
	\renewcommand{\headrulewidth}{1pt}
	\renewcommand{\footrulewidth}{0pt}
}


\fancypagestyle{toc}{
	\fancyhf{}
	\renewcommand{\headrulewidth}{1pt}
	\renewcommand{\footrulewidth}{0pt}
}

\fancyhf{}
\fancyhead[CO]{\kaishu\JLUrightmark}
\fancyhead[CE]{\kaishu\JLUrightmark}
\fancyfoot[R] {\kaishu\footnotesize\thepage}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{0pt}


%-------- setup section ------%
% use ctex's setup method
\ctexset {
	chapter = {
		format=\song\zihao{3}\bfseries\centering,
		number=\arabic{chapter},
		beforeskip=8pt,
		afterskip=16pt,
		tocline=\CTEXifname{\protect\numberline{\CTEXthechapter}}{}#2
	},
	section = {
		format=\song\zihao{4}\bfseries\raggedright,
		beforeskip=13pt,
		afterskip=13pt
	},
	subsection = {
		format=\song\zihao{-4}\bfseries\raggedright,
		beforeskip=8pt,
		afterskip=7pt
	}
}

%-------- toc --------%
\tocloftpagestyle{toc}

% title
\renewcommand{\contentsname}{目 \qquad 录}
\setlength{\cftbeforetoctitleskip}{8pt}
\renewcommand{\cfttoctitlefont}{\hfill\song\zihao{3}\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
\setlength{\cftaftertoctitleskip}{16pt}

% dot leader line
\renewcommand{\cftdotsep}{0.5}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}

% skip between lines
\setlength{\cftbeforechapskip}{4pt}
\setlength{\cftbeforesecskip}{4pt}
\setlength{\cftbeforesubsecskip}{4pt}

% indent for lines
\setlength{\cftsecindent}{14pt}      % section的缩进
\setlength{\cftsubsecindent}{28pt}   % subsection的缩进

% setup page font
\renewcommand{\cftchappagefont}{}


%-------- table & figure & equation counter -------- %
\DeclareCaptionFont{heiti}{\heiti}
\captionsetup{labelsep=quad}
\captionsetup{font={small, heiti}}

\renewcommand{\theequation}{%
  \ifnum \c@chapter>\z@ \thechapter-\fi \@arabic\c@equation}
\renewcommand{\thefigure}{%
  \ifnum \c@chapter>\z@ \thechapter-\fi \@arabic\c@figure}
\renewcommand{\thetable}{%
  \ifnum \c@chapter>\z@ \thechapter-\fi \@arabic\c@table}


%-------- title page --------%

% some var
\newcommand{\@zhtitle}{}
\newcommand{\zhtitle}[1]{\renewcommand{\@zhtitle}{#1}}

\newcommand{\@entitle}{}
\newcommand{\entitle}[1]{\renewcommand{\@entitle}{#1}}

\newcommand{\@zhabstract}{}
\newcommand{\zhabstract}[1]{\renewcommand{\@zhabstract}{#1}}

\newcommand{\@enabstract}{}
\newcommand{\enabstract}[1]{\renewcommand{\@enabstract}{#1}}

\newcommand{\@zhkeywords}{}
\newcommand{\zhkeywords}[1]{\renewcommand{\@zhkeywords}{#1}}

\newcommand{\@enkeywords}{}
\newcommand{\enkeywords}[1]{\renewcommand{\@enkeywords}{#1}}

\newcommand{\@enauthor}{}
\newcommand{\enauthor}[1]{\renewcommand{\@enauthor}{#1}}

\newcommand{\@ensupervisor}{}
\newcommand{\ensupervisor}[1]{\renewcommand{\@ensupervisor}{#1}}

\newcommand{\zhcover}{
	\clearpage
	\pdfbookmark[0]{摘要}{zhsummary}

	\vspace*{4pt}
	\begin{center}
    	\song\zihao{-3}\@zhtitle
    \end{center}

	\vspace{1em}

	\begin{center}
		\song\zihao{4}\textbf{摘要}
	\end{center}

	\vspace{1em}

	{\song\zihao{-4} \@zhabstract}

	\vspace{2.0em}

	{\noindent\song\zihao{4}\textbf{关键词：}

	\song\zihao{-4}\@zhkeywords
	}
}

\newcommand{\encover} {
	\clearpage
	\pdfbookmark[0]{Abstract}{ensummary}

	\vspace*{4pt}
	\begin{center}
    	\zihao{-3} \@entitle
    \end{center}

	\begin{flushright}
		\zihao{-3} Author: \@enauthor

		\zihao{-3} Supervisor: \@ensupervisor
	\end{flushright}

	\vspace{1em}
	\begin{center}
		\zihao{4}\textbf{Abstract}
	\end{center}

	\vspace{1em}

	{\zihao{-4} \@enabstract}

	\vspace{2.0em}

	{\noindent\zihao{4}\textbf{Keywords:}

	\zihao{-4}\@zhkeywords
	}
	
}

% define \originalstatement
\newcommand{\@originalstatementdate}{}
\newcommand{\originalstatementdate}[1]{\renewcommand{\@originalstatementdate}{#1}}
\newcommand{\originalstatement}{%
  \newpage
  \thispagestyle{empty}
  \pdfbookmark[0]{吉林大学学士学位论文（设计）承诺书}{originalstatement}  
  \begin{center}
    \song\zihao{3}\textbf{\  \\ \  \\ 吉林大学学士学位论文（设计）承诺书}
  \end{center}
  
  {\song\zihao{4}
    \vspace{2.7cm}
    本人郑重承诺：所呈交的学士学位毕业论文（设计），是本人在指
    导教师的指导下，独立进行实验、设计、调研等工作基础上取得的成
    果。除文中已经注明引用的内容外，本论文（设计）不包含任何其他
    个人或集体已经发表或撰写的作品成果。对本人实验或设计中做出重
    要贡献的个人或集体，均已在文中以明确的方式注明。本人完全意识
    到本承诺书的法律结果由本人承担。\\ \\ \\ \\*[0.5cm]

    \hspace{3cm}学士学位论文（设计）作者签名：

    \hspace{7cm}\@originalstatementdate
  }
} % end define \originalstatement


%-------- some default setup --------%

% default header & footer for all page in main
\pagestyle{plain}
