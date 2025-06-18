# PanIndex for FreeBSD

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/LoveDoLove/panindex-freebsd/build.yml?branch=main)](https://github.com/LoveDoLove/panindex-freebsd/actions/workflows/build.yml)

This project provides automated daily builds of [PanIndex](https://github.com/px-org/PanIndex) for FreeBSD platforms. PanIndex is a network disk directory index tool that supports multiple cloud storage platforms.

## About PanIndex

PanIndex is a powerful file indexing and sharing platform that provides:

- Cross-platform compatibility and easy deployment
- Support for multiple storage providers
- Multiple themes including dark mode
- File previews (images, videos, audio, code, PDF, ePub, markdown)
- Direct download links
- Anti-leech protection
- Short and share links
- Access control
- WebDAV support
- And more...

## Supported Storage Platforms

PanIndex supports a wide range of storage providers:

- Local directory
- Cloud 189
- Teambition Team
- Aliyundrive (share)
- OneDrive / Sharepoint (global and CN)
- Cloud 139
- Google Drive
- WebDav
- FTP
- S3 (Object Storage)
- PikPak
- Cloud 115
- Cloud 123

## Build Information

The FreeBSD build is automatically compiled every day at midnight UTC using GitHub Actions. The build process:

1. Sets up a FreeBSD base environment
2. Clones the latest tagged version of PanIndex from the official repository
3. Compiles with FreeBSD-specific optimizations
4. Creates a release with the compiled binary

## Installation

### Download Binary

You can download the latest PanIndex FreeBSD binary from the [Releases](https://github.com/LoveDoLove/panindex-freebsd/releases) page.

### Running on FreeBSD

1. Download the latest release
2. Make it executable:
   ```sh
   chmod +x PanIndex
   ```
3. Run the executable:
   ```sh
   ./PanIndex
   ```
4. Access the web interface at `http://localhost:5238` by default

## Building Manually

If you want to build PanIndex for FreeBSD manually:

1. Clone this repository:
   ```sh
   git clone https://github.com/LoveDoLove/panindex-freebsd.git
   cd panindex-freebsd
   ```

2. Make sure you have a FreeBSD environment set up or use the same approach as in the GitHub workflow:
   ```sh
   # Set up FreeBSD base (example for Linux host)
   wget -q https://download.freebsd.org/releases/amd64/14.3-RELEASE/base.txz
   sudo mkdir /opt/freebsd && sudo tar -xf ./base.txz -C /opt/freebsd
   ```

3. Clone the PanIndex repository:
   ```sh
   export LATEST_APP=$(wget -qO- https://api.github.com/repos/px-org/PanIndex/tags | gawk -F '["v]' '/name/{print "v"$5;exit}')
   git clone -b $LATEST_APP https://github.com/px-org/PanIndex
   ```

4. Run the build script:
   ```sh
   cd PanIndex
   bash ../build.sh
   ```

## Contributing

Contributions to improve the FreeBSD build process are welcome:

1. Fork the project
2. Create your feature branch (`git checkout -b feature/amazing-improvement`)
3. Commit your changes (`git commit -m 'Add some amazing improvement'`)
4. Push to the branch (`git push origin feature/amazing-improvement`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Disclaimer

- This build is an unofficial FreeBSD port of PanIndex
- The original PanIndex project is licensed under AGPL-3.0
- Please follow all applicable laws and regulations when using this software
- This program is designed for sharing network disk files; please do not abuse it
- The maintainers of this build are not responsible for any misuse of the software

## Sponsorship

This project is proudly supported by [ZMTO](https://www.zmto.com) as part of their open-source VPS program. We extend our sincere gratitude to ZMTO for their valuable resources and commitment to empowering open-source innovation.

## Links

- [Original PanIndex Project](https://github.com/px-org/PanIndex)
- [PanIndex Documentation](https://docs.noki.icu/)
