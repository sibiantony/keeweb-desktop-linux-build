module.exports = function(grunt) {
    // Load original
    const originalConfig = require('./Gruntfile')(grunt);

    // Override default configuration
    grunt.config.set('electron-builder.linux.options.config.linux.target', ['AppImage']);
    grunt.config.set('clean.dist', ['dist/*', 'tmp']);
    grunt.config.set('copy.electron-builder-dist-linux-rpm', {});
    grunt.config.set('copy.electron-builder-dist-linux-snap', {});

};

