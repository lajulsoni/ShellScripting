#!/bin/sh
<< coment 
# Define your function here
Hello () {
     echo "Hello World"
   }

   # Invoke your function
   Hello
coment
fun()
listit() {
      while [ "$1" ]; do
                if [ -d "$1" ]; then
                              listit "$1"/*
                                      else
                                                    printf '%s\n' "$1"
                                                            fi
                                                                    shift
                                                                        done
                                                                      }

                                                                      listit *

