#!/usr/bin/env bash
go mod tidy
go build -o bin\start  .\cmd\main.go 