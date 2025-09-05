#!/bin/bash

function jiraHash {
    echo "$(git symbolic-ref --short HEAD)" | grep -E -o '^[A-Z]+-[0-9]+';
};

function jiraCommit {
    branch=$(git symbolic-ref --short HEAD)
    type=${1:-feat}; 
    branchHash=$(jiraHash); 
    branchDescription=${branch#"$branchHash"}
    branchDescription=$(echo "$branchDescription" | tr -d "\_\/")
    branchDescription=$(echo "$branchDescription" | tr '-' ' ')
    propDescription="${@:2}"; 

    [[ -n "$branchDescription" ]] && commitDescription="$branchDescription"; 
    [[ -n "$propDescription" ]] && commitDescription="$propDescription";
    [[ -z "$propDescription" && -z "$branchHash" ]] && commitDescription="add $type";

    [[ -z "$branchHash" ]] && hash='' || hash="($branchHash)"; 

    commitMessage="$type$hash: $commitDescription"; 

    echo "git commit -m \"$commitMessage\""
    git commit -m "$commitMessage"
};