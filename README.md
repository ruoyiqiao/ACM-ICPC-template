# 📚 ACM-ICPC-template

It's a collection of code snippets, algorithms, and data structures useful in competitive programming. Please note that some code may be referenced from other sources.

### Compiling the Template

You can compile the LaTeX template into a PDF by running the following command in your terminal:

```bash
make
```

This will generate the PDF document (`template.pdf`) in the `pdf/` directory.

If you'd like to clean up auxiliary files generated during the compilation (e.g., `.aux`, `.log`, `.toc`), you can run:

```bash
make clean
```

### Adding Code Snippets

To add a new code snippet to a specific section (e.g., `Graph`, `DataStructure`), you can use the provided shell script `add_snippet.sh`:

```bash
./add_snippet.sh <section> <filename> <subsection>
```

For example, to add a new graph algorithm under the `Graph` section with the filename `BFS.tex` and the subsection name `Breadth-First Search`, run:

```bash
./add_snippet.sh Graph BFS.tex "Breadth-First Search"
```

This will create a new `.tex` file in the corresponding directory with the appropriate LaTeX structure for a code listing.

## License

Provided under the MIT License.
