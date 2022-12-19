echo "Publishing ${PROJECT_NAME} to ${PACKAGE_REPO_NAME}"
echo " Publishing version: ${VERSION}"
echo " Publish tag is ${PUBLISH_TAG}"

# perform publish
if [ "${DRY_RUN}" == "1" ]; then
  echo "(dry run)"
  # Don't actually call cpan-upload --dry-run, because it echoes the password
else
  cpan-upload "${GITHUB_WORKSPACE}/dist/${PACKAGE_FILENAME}"
fi
