function bashrc() {
    action=$1

    if [ $action = '-s' ] || [ $action = '--source' ]
    then
        source ~/.bashrc
    elif [ $action = '-e' ] || [ $action = '--edit' ]
    then
        code ~/.bashrc
    elif [ $action = '-lf' ] || [ $action = '--list-functions' ]
    then
        cat ~/.bashrc | grep "^function" | cut -d ' ' -f 2 | tr -d '()' | sort | uniq
    elif [ $action = '-le' ] || [ $action = '--list-exports' ]
    then
        cat ~/.bashrc | grep "^export" | cut -d ' ' -f 2- | sort | uniq
    elif [ $action = '-la' ] || [ $action = '--list-aliases' ]
    then
        cat ~/.bashrc | grep "^alias" | cut -d ' ' -f 2- | sort | uniq
    elif [ $action = '-h' ] || [ $action = '--help' ]
    then
        echo
        echo 'Options include:'
        echo
        echo "--source, -s                  Reload .bashrc file in current shell."
        echo "--edit, -e                    Open .bashrc file for editing."
        echo "--list-function, -lf          List all functions defined in .bashrc file."
        echo "--list-exports, -le           List exported variables in .bashrc file."
        echo "--list-aliases, -la           List aliases defined in .bashrc file."
        echo "--help, -h                    List all available options."
        echo
    fi
}