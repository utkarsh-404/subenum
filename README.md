# Subenum - Subdomain Enumeration & Reconnaissance Tool

![subenum](https://img.shields.io/badge/Version-1.0-blue)
![License](https://img.shields.io/badge/License-MIT-green)

A Bash script to automate subdomain enumeration, live target detection, and reconnaissance using popular tools like `subfinder`, `sublist3r`, `knockpy`, `httprobe`, and `eyewitness`.

## Features
- **Subdomain Enumeration**: Uses 8+ tools to gather subdomains.
- **Live Target Detection**: Filters active HTTP/HTTPS services with `httprobe`.
- **Reconnaissance**: 
  - Screenshots of live targets via `eyewitness`.
  - Technology detection with `whatweb`.
- **Automated Workflow**: Single command to run all checks and save results.

## Installation
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/subenum.git
   cd subenum
   ```

2. **Run the Installer**:
   ```bash
   chmod +x install.sh
   sudo ./install.sh
   ```

3. **Verify Installation**:
   ```bash
   subenum --help
   ```

## Usage
```bash
subenum <domain>
```
**Example**:
```bash
subenum example.com
```

## Output Files
Results are saved to `~/subenum_results/`:
- `final_subdomains.txt`: Deduplicated subdomains.
- `alive_subdomains.txt`: Active HTTP/HTTPS hosts.
- `eyewitness_report/`: Screenshots and HTML report.
- `whatweb_scan.txt`: Technology stack details.

## Tools Used
- Subdomain Enumeration: `subfinder`, `sublist3r`, `crt.sh`, `knockpy`, `assetfinder`, `certspotter`, `waybackurls`
- Live Detection: `httprobe`
- Recon: `eyewitness`, `whatweb`

## Contributing
Pull requests are welcome! For major changes, open an issue first.

## License
[MIT](https://choosealicense.com/licenses/mit/)

## Disclaimer
Use this tool only on domains you own or have explicit permission to scan. The developers are not responsible for misuse.
