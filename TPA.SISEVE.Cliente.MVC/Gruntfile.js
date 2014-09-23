module.exports = function (grunt) {

    require('load-grunt-tasks')(grunt);

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        coffee: {
            compile: {
                options: {
                    join: true,
                    bare: true
                },
                files: {
                    '<%= pkg.webapp.path %>/app.js': [
                        '<%= pkg.webapp.path %>/app.coffee',
                        '<%= pkg.webapp.path %>/config.coffee'
                    ]
                }
            }
        },

        uglify: {
            minified: {
                files: {
                    '<%= pkg.webapp.path %>/app.min.js': ['<%= pkg.webapp.path %>/app.js']
                }
            }
        }, 

        watch: {
            coffee: {
                files: ['<%= pkg.webapp.path %>/**/*.coffee'],
                tasks: ['coffee:compile', 'uglify:minified'],
                options: {
                    livereload: true
                }
            },
            template: {
                files: ['<%= pkg.webapp.path %>/**/*.html'],
                tasks: [],
                options: {
                    livereload: true
                }
            }, 
            grunt: {
                files: ['Gruntfile.js']
            }
        }
    });


    grunt.registerTask('default', ['watch'])

}