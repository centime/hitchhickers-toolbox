#! /bin/bash
#
# Script to download dumps of hitchwiki.org and convert them to an offline database usable for handheld devices
#

env-aard/bin/activate
source env-aard/bin/activate


LANG="bg de en es fi fr he nl pl pt ro ru tr zh"
#LANG="en fr"

for l in ${LANG}; do
        # Download wiki dumps
        wget "http://hitchwiki.org/dumps/hitchwiki-current-${l}.xml" -O "hitchwiki_${l}.xml"

        # Fetching wiki meta data
        python2 fetchsiteinfo.py "hitchwiki.org/${l}" > "hitchwiki_${l}.json"

        # Build article database from dumps
        mw-buildcdb --input "hitchwiki_${l}.xml" --output "hitchwiki_${l}.cdb"

        # Create aar files from article database
        aardc wiki "hitchwiki_${l}.cdb" "hitchwiki_${l}.json"

        # Move files to visible directory
        # mv "hitchwiki_${l}.aar" "../public_html/hitchwiki_${l}.cdb"

        # Cleanup
        rm -fR "hitchwiki_${l}.xml" "hitchwiki_${l}.json" "hitchwiki_${l}.cdb"
done

# Zip
zip -r hitchwiki-offline.zip aardc-hitchwiki_*

# Cleanup
rm -r aardc-hitchwiki_*