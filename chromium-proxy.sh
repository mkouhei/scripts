#!/bin/bash

PAC=${HOME}/bin/proxy.pac
chromium-browser --proxy-pac-url="file://${PAC}"
