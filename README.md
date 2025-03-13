

<!-- README.md is generated from README.Rmd. Please edit that file -->

# toyapp

<!-- badges: start -->

<!-- badges: end -->

The goal of toyapp is to show a toy app that uses a public and private
package.

    docker build --build-arg GITHUB_TOKEN="secret" . -t toyapp
    docker run --rm -it -p 8080:8080 toyapp 
