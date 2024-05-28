#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Copyright 2024 - The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the',  help='License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an',  help='AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
import sys
import urllib.request
import hashlib


def download_resource(object, output_file):
    # Our interpreter does not have https.
    url = f"http://storage.googleapis.com/downloads.webmproject.org/test_data/libvpx/{object}"

    with urllib.request.urlopen(url) as response, open(output_file, "wb") as out_file:
        while True:
            chunk = response.read(8192)  # Read in chunks of 8KB
            if not chunk:
                break
            out_file.write(chunk)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: download_resource.py <object> <output_file>")
        sys.exit(1)
    download_resource(sys.argv[1], sys.argv[2])
