@ECHO OFF
IF EXIST %1 (
    CD %1
    IF "%2%"=="p" (
        echo System will provision...
        vagrant up --provision
    ) ELSE (
        IF "%2%"=="np" (
            echo System will NOT provision...
            vagrant up --no-provision
        ) ELSE (
            echo Nothing to do
        )
    )
    cd ..
) ELSE (
    echo The service doesn't exist
)
