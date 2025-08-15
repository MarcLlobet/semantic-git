#!/bin/bash

function jiraHash {
    echo "$(git symbolic-ref --short HEAD)" | grep -E -o '^[A-Z]+-[0-9]+';
};

function jiraCommit {
    type=${1:-feat}; 
    hash=$(jiraHash); 
    text="${@:2}"; 
    [[ -z "$text" ]] && optionalText="add $type" || optionalText="$text"; 
    [[ -z "$hash" ]] && optionalHash='' || optionalHash="($hash)"; 
    message="$type$optionalHash: $optionalText"; 
    git commit -m"$message";
};