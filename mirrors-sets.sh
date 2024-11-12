#!/bin/bash
emerge --verbose --oneshot app-portage/mirrorselect
mirrorselect -i -o >> /etc/portage/make.conf