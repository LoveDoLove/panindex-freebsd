<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a id="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">PanIndex FreeBSD Build</h3>
  <p align="center">
    Automated FreeBSD build workflow for <a href="https://github.com/px-org/PanIndex">PanIndex</a>.<br />
    <a href="#about-the-project"><strong>Explore the docs »</strong></a>
    <br />
    <a href="https://github.com/LoveDoLove/panindex-freebsd/issues">Report Bug</a>
    ·
    <a href="https://github.com/LoveDoLove/panindex-freebsd/issues">Request Feature</a>
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About The Project

This repository provides an automated workflow and build environment for compiling the [PanIndex](https://github.com/px-org/PanIndex) project for FreeBSD 14.1 (amd64). It includes GitHub Actions CI/CD, a cross-compilation shell script, and configuration for reproducible builds.

- **Automated FreeBSD builds** using GitHub Actions
- **Cross-compilation** with Clang and Go
- **Release automation** for PanIndex binaries
- **Attribution:** PanIndex is developed by [px-org](https://github.com/px-org/PanIndex). This build system and workflow are maintained by [LoveDoLove](https://github.com/LoveDoLove).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

- [Go](https://golang.org/)
- [Clang](https://clang.llvm.org/)
- [GitHub Actions](https://github.com/features/actions)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

To build PanIndex for FreeBSD locally or via CI:

### Prerequisites
- Go (latest)
- Clang with FreeBSD 14.1 cross toolchain
- Bash
- Git

### Installation

1. Clone this repository:
   ```sh
   git clone https://github.com/LoveDoLove/panindex-freebsd.git
   cd panindex-freebsd
   ```
2. Ensure you have the FreeBSD 14.1 sysroot at `/opt/freebsd` (see workflow for details).
3. Run the build script:
   ```sh
   bash build.sh
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

- The build script (`build.sh`) will fetch version info, set up environment variables, and build PanIndex for FreeBSD.
- GitHub Actions workflow (`.github/workflows/build.yml`) automates this process and creates releases.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Roadmap

- [x] Automated FreeBSD build workflow
- [x] Release automation
- [ ] Add more FreeBSD versions
- [ ] Add test automation

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

Contributions are welcome! Please fork the repo and submit a pull request. For major changes, open an issue first to discuss what you would like to change.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

LoveDoLove - [@LoveDoLove](https://github.com/LoveDoLove)

Project Link: [https://github.com/LoveDoLove/panindex-freebsd](https://github.com/LoveDoLove/panindex-freebsd)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments

- [PanIndex by px-org](https://github.com/px-org/PanIndex)
- [Best-README-Template by othneildrew](https://github.com/othneildrew/Best-README-Template)
- [GitHub Actions](https://github.com/features/actions)
- [Choose an Open Source License](https://choosealicense.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/LoveDoLove/panindex-freebsd.svg?style=for-the-badge
[contributors-url]: https://github.com/LoveDoLove/panindex-freebsd/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/LoveDoLove/panindex-freebsd.svg?style=for-the-badge
[forks-url]: https://github.com/LoveDoLove/panindex-freebsd/network/members
[stars-shield]: https://img.shields.io/github/stars/LoveDoLove/panindex-freebsd.svg?style=for-the-badge
[stars-url]: https://github.com/LoveDoLove/panindex-freebsd/stargazers
[issues-shield]: https://img.shields.io/github/issues/LoveDoLove/panindex-freebsd.svg?style=for-the-badge
[issues-url]: https://github.com/LoveDoLove/panindex-freebsd/issues
[license-shield]: https://img.shields.io/github/license/LoveDoLove/panindex-freebsd.svg?style=for-the-badge
[license-url]: https://github.com/LoveDoLove/panindex-freebsd/blob/main/LICENSE
