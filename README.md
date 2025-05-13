<a id="readme-top"></a>

# PanIndex-FreeBSD

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![Build FreeBSD](https://img.shields.io/badge/build-FreeBSD%2013.2-blue)](https://github.com/px-org/PanIndex)

A FreeBSD-compatible build and release workflow for [PanIndex](https://github.com/px-org/PanIndex), an open-source file indexing and management tool. This project automates the process of building PanIndex for FreeBSD, packaging, and releasing artifacts via GitHub Actions.

---

## Table of Contents
- [About The Project](#about-the-project)
- [Built With](#built-with)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Acknowledgments](#acknowledgments)

---

## About The Project

This repository provides a GitHub Actions workflow to build and release PanIndex for FreeBSD (amd64). It ensures that the latest version of PanIndex is automatically built using a FreeBSD VM, and the resulting binary is published as a GitHub release artifact.

**Key Features:**
- Automated scheduled and manual builds for FreeBSD 13.2
- Fetches the latest PanIndex tag and builds with Go 1.22
- Publishes the FreeBSD binary as a GitHub release
- MIT licensed

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Built With
- [Go (Golang)](https://golang.org/) 1.22
- [GitHub Actions](https://github.com/features/actions)
- [FreeBSD 13.2](https://www.freebsd.org/)
- [jq, wget, curl, git, gcc, bash, gawk, gsed]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Getting Started

To build PanIndex for FreeBSD locally or understand the CI process, follow these steps:

### Prerequisites
- FreeBSD 13.2 (or compatible)
- Go 1.22+
- git, gcc, bash, gawk, gsed, jq, wget, curl

### Installation & Build

1. **Clone the repository:**
   ```sh
   git clone https://github.com/px-org/PanIndex.git
   cd PanIndex
   ```
2. **Install dependencies:**
   ```sh
   pkg install -y jq node18 npm-node18 wget curl git gcc bash gawk gsed
   wget https://dl.google.com/go/go1.22.0.freebsd-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.freebsd-amd64.tar.gz && rm go1.22.0.freebsd-amd64.tar.gz
   ln -s /usr/local/go/bin/go /usr/local/bin/go
   ```
3. **Build the binary:**
   ```sh
   export APP_NAME="PanIndex"
   export ldflags="-w -s -X 'github.com/px-org/PanIndex/module.VERSION=$(git describe --tags)' -X 'github.com/px-org/PanIndex/module.BUILD_TIME=$(date "+%F %T")' -X 'github.com/px-org/PanIndex/module.GO_VERSION=$(go version)' -X 'github.com/px-org/PanIndex/module.GIT_COMMIT_SHA=$(git show -s --format=%H)'"
   CGO_ENABLED=1 go build -o ${APP_NAME} -ldflags="$ldflags" -tags=jsoniter .
   ```

Or simply use the provided GitHub Actions workflow for automated builds and releases.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Usage

After building, run the PanIndex binary on your FreeBSD system:

```sh
./PanIndex
```

Refer to the [PanIndex documentation](https://github.com/px-org/PanIndex) for configuration and usage details.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Roadmap
- [x] Automated FreeBSD build and release
- [ ] Add more FreeBSD versions
- [ ] Add tests and CI for other platforms
- [ ] Improve documentation

See the [issues](https://github.com/px-org/PanIndex/issues) for more.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Contributing

Contributions are welcome! Please fork the repo, create a feature branch, and submit a pull request. For major changes, open an issue first to discuss your ideas.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## License

Distributed under the MIT License. See [`LICENSE`](./LICENSE) for details.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Contact

Maintainer: [LoveDoLove](https://github.com/LoveDoLove)

Project Link: [https://github.com/px-org/PanIndex](https://github.com/px-org/PanIndex)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Acknowledgments

- [PanIndex](https://github.com/px-org/PanIndex)
- [FreeBSD](https://www.freebsd.org/)
- [GitHub Actions](https://github.com/features/actions)
- [Best-README-Template](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
