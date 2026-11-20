# File Viewer on Railway

[File Viewer](https://github.com/flyfish-dev/file-viewer) (Apache-2.0) — a browser-side preview site for 200+ file formats (Word, Excel, PowerPoint, PDF/OFD, CAD, 3D models, images, archives, code and more) plus document compare and an iframe embed mode. Files are rendered in the visitor's browser; no files are uploaded to the server. Deploy it on Railway with one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/PLACEHOLDER)

## What this template runs

- **file-viewer**: `ghcr.io/onepush-dev/file-viewer:3.3.4`, the official `flyfishdev/file-viewer:3.3.4` static nginx image with only the listen port changed from 80 to 8080. No variables, no database, no volume.

## How to use

1. Deploy and open the domain: drop or pick a file to preview it.
2. Embed it: `https://<domain>/iframe.html?url=/example/word.docx`; compare documents at `/compare.html`.

Note: the optional DWG/DWF CAD runtime upstream is AGPL-3.0; the viewer itself is Apache-2.0. The demo has no access control, so put it behind your own auth if the files are sensitive.

Not affiliated with File Viewer.
