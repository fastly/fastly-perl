# mark version
sed -i "s/^use constant VERSION => .*$/use constant VERSION => '${VERSION}';/" ./lib/WebService/Fastly/Configuration.pm
sed -i "s/^our \$VERSION = .*$/our \$VERSION = '${VERSION}';/" ./lib/WebService/Fastly.pm

# make a package (output is current directory)
TRIAL=""
if [ "${TRIAL_ID}" != "" ]; then
  TRIAL="--trial"
fi
milla build ${TRIAL}

# save the output filename to env
ARTIFACT_FILENAME=$(ls -1 -- WebService-Fastly-*.tar.gz)
if [ "${TRIAL_ID}" != "" ]; then
  # Currently looks like WebService-Fastly-x.yyy-TRIAL.tar.gz
  PACKAGE_FILENAME="${ARTIFACT_FILENAME%.tar.gz}${TRIAL_ID}.tar.gz"
  # Now looks like WebService-Fastly-x.yyy-TRIALz.tar.gz
else
  PACKAGE_FILENAME="${ARTIFACT_FILENAME}"
fi
echo "PACKAGE_FILENAME=${PACKAGE_FILENAME}" >> "${GITHUB_ENV}"

# move package to dist
mkdir -p "${GITHUB_WORKSPACE}/dist"
mv "${ARTIFACT_FILENAME}" "${GITHUB_WORKSPACE}/dist/${PACKAGE_FILENAME}"
