pipeline {
environment {
registry = "munesh777/poc"
registryCredential = 'Docker'
dockerImage = ''
}
agent any
stages {
stage('Cloning our Git') {
steps {
git branch: 'main', changelog: false, credentialsId: 'git', poll: false, url: 'https://github.com/munesh-reddy/dockerfiles.git'
}
}
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
}
}
}
stage('Deploy our image') {
steps{
script {
docker.withRegistry( '', registryCredential ) {
dockerImage.push()
}
}
}
}
}
}
