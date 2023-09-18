# Colab SPAdes

This Google Colab notebook can be used to run
[SPAdes](https://github.com/ablab/spades) on [Google
Colab](https://colab.research.google.com/).

<!-- Motivation -->
<!-- Other contributors -->

It uses a precompiled binary of SPAdes that is compatible with Google
Colab's Python 3 environment.

## Compile SPAdes for Colab

```
docker build --build-arg="SPADES_VERSION=3.15.5" --output . .
gh release create v${version} ./SPAdes-${version}-Colab.tar.gz
```

## References

```bibtex
@article{Prjibelski2020,
  doi = {10.1002/cpbi.102},
  url = {https://doi.org/10.1002/cpbi.102},
  year = {2020},
  month = jun,
  publisher = {Wiley},
  volume = {70},
  number = {1},
  author = {Andrey Prjibelski and Dmitry Antipov and Dmitry Meleshko and Alla Lapidus and Anton Korobeynikov},
  title = {Using {SPAdes} De Novo Assembler},
  journal = {Current Protocols in Bioinformatics}
}
```
