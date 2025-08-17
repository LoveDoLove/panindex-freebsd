<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->

<a id="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<br />
<div align="center">
  <a href="https://github.com/LoveDoLove/panindex-freebsd">
    <img src="images/logo.png" alt="PanIndex FreeBSD Logo" width="80" height="80">
  </a>

<h3 align="center">PanIndex FreeBSD</h3>

  <p align="center">
    FreeBSD build and packaging for PanIndex, a modern file indexing and sharing server. This project automates building PanIndex for FreeBSD using GitHub Actions and custom scripts.
    <br />
    <a href="https://github.com/LoveDoLove/panindex-freebsd"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/LoveDoLove/panindex-freebsd">View Demo</a>
    &middot;
    <a href="https://github.com/LoveDoLove/panindex-freebsd/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    &middot;
    <a href="https://github.com/LoveDoLove/panindex-freebsd/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About The Project

PanIndex FreeBSD provides scripts and automation to build the PanIndex file indexing and sharing server for FreeBSD. It fetches the latest upstream release, configures the build environment, and produces FreeBSD-compatible binaries. This project is not the original PanIndex, but a downstream build/packaging effort for FreeBSD users.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

- [Go](https://golang.org/)
- [GitHub Actions](https://github.com/features/actions)
- [FreeBSD](https://www.freebsd.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

To build PanIndex for FreeBSD locally, follow these steps.

### Prerequisites

- Go (latest version recommended)
- Clang with FreeBSD cross-compilation support
- Git
- Bash

### Installation

1. Clone this repository:
   ```sh
   git clone https://github.com/LoveDoLove/panindex-freebsd.git
   cd panindex-freebsd
   ```
2. Ensure you have a FreeBSD sysroot at `/opt/freebsd` (see GitHub Actions for setup example).
3. Run the build script:
   ```sh
   bash build.sh
   ```
4. The resulting binary will be built for FreeBSD.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

After building, deploy the resulting PanIndex binary to your FreeBSD system. For usage and configuration, refer to the [upstream PanIndex documentation](https://github.com/px-org/PanIndex).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

Contributions are welcome! Please fork the repo and submit a pull request, or open an issue for suggestions and bug reports.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Top contributors:

<a href="https://github.com/LoveDoLove/panindex-freebsd/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=LoveDoLove/panindex-freebsd" alt="contrib.rocks image" />
</a>

## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

LoveDoLove - [@LoveDoLove](https://github.com/LoveDoLove)

Project Link: [https://github.com/LoveDoLove/panindex-freebsd](https://github.com/LoveDoLove/panindex-freebsd)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Sponsorship

This project is proudly supported by [ZMTO](https://www.zmto.com) as part of their open-source VPS program. We extend our sincere gratitude to ZMTO for their valuable resources and commitment to empowering open-source innovation.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments

- [PanIndex Upstream](https://github.com/px-org/PanIndex)
- [FreeBSD Project](https://www.freebsd.org/)
- [GitHub Actions](https://github.com/features/actions)

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
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/
[product-screenshot]: images/screenshot.png
