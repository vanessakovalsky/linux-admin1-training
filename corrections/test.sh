demo ()
{
    echo $1
    echo $2
    echo $3
    echo $* 
}

demo "bonjour" "c est le matin" "dur le mercredi"

demofor ()
{
    for argument
    do
        echo $argument
    done
}

demofor "bonjour" "c est le matin" "dur le mercredi"
