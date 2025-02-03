#!/bin/sh

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <section> <filename> <subsection>"
    exit 1
fi

section=$1
filename=$2
subsection=$3

base_dir="src"

section_dir="$base_dir/$section"
if [ ! -d "$section_dir" ]; then
    echo "Error: Directory '$section_dir' does not exist."
    exit 1
fi

full_path="$section_dir/$filename"

touch "$full_path"
printf "\\subsection{%s}\n" $subsection >> "$full_path"
printf "\\"  >> "$full_path"
printf "begin{lstlisting}[language=c++]\n" >> "$full_path"
printf "\\" >> "$full_path"
printf "end{lstlisting}\n" >> "$full_path"

echo "File created successfully at $full_path"
