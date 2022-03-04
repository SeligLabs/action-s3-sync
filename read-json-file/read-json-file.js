import fs from 'fs';
const core = require('@actions/core');

/**
 * Read package.json file
 * @param {string} path
 * @returns {object}
 */
const readPackageJson = function (path) {
    const packageJson = fs.readFileSync(path).toString();
    return JSON.parse(packageJson);
};

try {
    /**
     * Path to directory with package.json file
     * @type {string}
     */
    const path = core.getInput('path');

    /**
     * Get data from package.json file
     * @type {object}
     */
    const packageInfo = readPackageJson(path);

    core.setOutput('packageInfo', packageInfo);
} catch (error) {
    core.setFailed(error.message);
}
