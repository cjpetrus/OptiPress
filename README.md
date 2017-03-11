#OptiPress
an optimal php5 wordpress bedrock environment made for speed with docker nginx php-fpm/hhvm + letsencrypt certbot for ssl.

##Instructions
1. Copy .env.example to .env and update environment variables:
    - DB_NAME - Database name
    - DB_USER - Database user
    - DB_PASSWORD - Database password
    - DB_HOST - Database host
    - WP_ENV - Set to environment (development, staging, production)
    - WP_HOME - Full URL to WordPress home (http://example.com)
    - WP_SITEURL - Full URL to WordPress including subdirectory (http://example.com/wp)
        AUTH_KEY, 
        SECURE_AUTH_KEY,
        LOGGED_IN_KEY,
        NONCE_KEY, AUTH_SALT, 
        SECURE_AUTH_SALT,
        LOGGED_IN_SALT, NONCE_SALT 
      - Generate with wp-cli-dotenv-command or from the Roots WordPress Salt Generator
      
2. Add theme(s) in web/app/themes as you would for a normal WordPress site.

3. Set your site vhost document root to /path/to/site/web/ (/path/to/site/current/web/ if using deploys)
Access WP admin at http://example.com/wp/wp-admin

4. Edit the docker-compose.yml to reflect recent changes.
 
5. Run docker-compose and bring up your services. 

6. Enjoy. Blazing fast wordpress install "OptiPress"
#


###Warning:
    This environment is meant for dev. Would not use  as-is in production.