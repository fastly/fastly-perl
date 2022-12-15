# Use bash extglob
shopt -s extglob

# Parse the release tag

# strip leading 'release/'
TAG="${GITHUB_REF_NAME#release/}"

# strip leading v
TAG_VALUE="${TAG#v}"

# strip trailing -dry
VERSION="${TAG_VALUE%-dry}"

# Detect dry run mode
DRY_RUN=0
if [ "${TAG_VALUE}" != "${VERSION}" ]; then
    DRY_RUN=1
fi

# fastly-perl versions are either x.yyy or x.yyy-"trial"z
VERSION_PURE="${VERSION%-trial*([0-9])}"
VERSION_TITLE="v${VERSION}"
if [ "${VERSION}" != "${VERSION_PURE}" ]; then
  TRIAL_ID="${VERSION#${VERSION_PURE}-trial}"
  VERSION="${VERSION_PURE}"
  PUBLISH_TAG=trial
  VERSION_TITLE="v${VERSION}-TRIAL${TRIAL_ID}"
fi
PUBLISH_TAG="${PUBLISH_TAG:-latest}"

echo "API_CLIENT_NAME=Perl"
echo "PROJECT_NAME=fastly-php"
echo "PACKAGE_REPO_NAME=CPAN"
echo "VERSION=${VERSION}"
echo "VERSION_TITLE=${VERSION_TITLE}"
echo "DRY_RUN=${DRY_RUN}"
echo "PUBLISH_TAG=${PUBLISH_TAG}"
echo "TRIAL_ID=${TRIAL_ID}"
