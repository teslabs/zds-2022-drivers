# Mastering Zephyr Driver Development

[![build](https://github.com/teslabs/zds-2022-drivers/actions/workflows/build.yml/badge.svg)](https://github.com/teslabs/zds-2022-drivers/actions/workflows/build.yml)
[![pdf](https://img.shields.io/badge/latest-pdf-blue)](https://github.com/teslabs/zds-2022-drivers/releases/latest)

This repository contains the slides for the "Mastering Zephyr Driver
Development" talk given at the Zephyr Development Summit 2022. The presentation
goes through multiple topics related to Zephyr driver development by
implementing a "smart lock" firmware.

[![Video](http://img.youtube.com/vi/o-f2qCd2AXo/0.jpg)](http://www.youtube.com/watch?v=o-f2qCd2AXo "Mastering Zephyr Driver Development")

https://user-images.githubusercontent.com/25011557/170713587-105c6202-f641-44e6-a140-0daa9040704d.mp4

Topics covered in the presentation include:

- Introduction to Zephyr device model
- Implementation of a sensor driver (JM-101 fingerprint sensor)
- Definition of a custom API to control locks
- Implementation of a lock driver (servo-driven lock)

Source code for the firmware is available at:
https://github.com/teslabs/zds-2022-drivers-app

## Build

The slides are written using the `beamer` LaTeX class. They can be built
by running:

```shell
make
```

Build files can be cleaned by running:

```shell
make clean
```

## Lint and format

Slides can be linted for errors by running:

```shell
make lint
```

Additionally, slides can be automatically formatted using:

```shell
make fmt
```
