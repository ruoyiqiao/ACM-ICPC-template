#!/bin/sh
filename=$1
touch $filename
echo "\subsection{}" >> $filename
echo "\\begin{lstlisting}[language=c++]" >> $filename
echo "\\end{lstlisting}" >> $filename
