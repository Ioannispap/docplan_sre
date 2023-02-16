<?php
    if ("prod" != getenv("APP_ENV"))
    {
        http_response_code(200);
    }

    echo file_get_contents('./config');