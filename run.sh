PATH_TO_COMPOSER_JSON_FILE="${PATH}/composer.json"

if [[ ! -f "${PATH_TO_COMPOSER_JSON_FILE}" ]]; then
    echo "File \"${PATH_TO_COMPOSER_JSON_FILE}\" does not exist."

    exit 1
fi

COMPOSER_ROOT_VERSION=$(/usr/bin/jq --arg key "dev-${BRANCH}" --raw-output '.["extra"]["branch-alias"][$key]' ${PATH_TO_COMPOSER_JSON_FILE})

if [[ null = "${COMPOSER_ROOT_VERSION}" ]]; then
    echo "A branch alias has not been defined in \"${PATH_TO_COMPOSER_JSON_FILE}\" for branch \"${BRANCH}\"."

    exit 0
fi

echo "Determined composer root version for branch \"${BRANCH}\" in \"${PATH_TO_COMPOSER_JSON_FILE}\" as \"${COMPOSER_ROOT_VERSION}\"."

if [[ true = "${GITHUB_ACTIONS}" ]]; then
    echo "Setting COMPOSER_ROOT_VERSION environment variable to \"${COMPOSER_ROOT_VERSION}\"."
    echo "COMPOSER_ROOT_VERSION=${COMPOSER_ROOT_VERSION}" >> "${GITHUB_ENV}"
fi
