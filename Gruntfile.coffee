module.exports = (grunt)->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    # monitoring task
    watch:
      files: [
        'coffee/**/*.coffee'
        'jade/**/*.jade'
        '*.html'
      ],
      tasks: [
        'coffee'
        'jade'
        'prettify'
      ]
    # package manager
    bower:
      install:
        options:
          targetDir: './lib'
          layout: 'byType'
          install: true
          verbose: false
          cleanTargetDir: true
          clearnBowerDir: false
    # html template engine
    jade:
      compile:
        option:
          pretty: true
        cwd: 'jade'
        files: './index.html':'./jade/index.jade'
    # html auto format
    prettify:
     all:
        expand: true
        cwd: '.'
        ext: '.html'
        src: ['*.html']
    # js template engine
    coffee:
      compile:
        files: [
          expand: true
          cwd: 'coffee/'
          src: ['**/*.coffee']
          dest: 'js/'
          ext: '.js'
        ]

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-prettify'
  grunt.registerTask 'default', ['watch']
  return
