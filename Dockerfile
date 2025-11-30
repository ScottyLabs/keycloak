FROM quay.io/keycloak/keycloak:latest

# Install "Remember Me" authenticator
ADD --chown=keycloak:keycloak https://github.com/Herdo/keycloak-remember-me-authenticator/releases/download/v1.0.0/keycloak-remember-me-authenticator-1.0.0.jar /opt/keycloak/providers/keycloak-remember-me-authenticator-1.0.0.jar

# Install Discord identity provider extension
ADD --chown=keycloak:keycloak https://github.com/wadahiro/keycloak-discord/releases/download/v0.6.1/keycloak-discord-0.6.1.jar /opt/keycloak/providers/keycloak-discord-0.6.1.jar

RUN /opt/keycloak/bin/kc.sh build
