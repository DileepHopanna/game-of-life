pipeline {
        agent any 
         
        stages {
            stage('cloning gol url') {
                
                steps {
                    git 'https://github.com/DileepHopanna/game-of-life.git'
                }
            }
            stage('Building code and creating artifact') {
            tools{
                jdk 'jdk8'
            }   
                steps {
                    sh 'mvn package'
                }
            }   
            stage('arching artifacts'){
                steps{
                    archiveArtifacts artifacts: 'gameoflife-web/target/*.war', followSymlinks: false

                }
            }  

            stage('displaying unit test results'){
                steps{
                    junit 'gameoflife-web/target/surefire-reports/*.xml'
                }
              }

            }
        }