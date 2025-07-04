# Imagem base do Keycloak
FROM quay.io/keycloak/keycloak:26.1.3

# Define variáveis de ambiente
ENV KC_DB=dev-file \
    KC_HEALTH_ENABLED=true \
    KC_METRICS_ENABLED=true \
    KC_HTTP_ENABLED=true \
    KC_PROXY=reencrypt \
    KC_SPI_STICKY_SESSION_ENCODER_INFINISPAN_SHOULD_ATTACH_ROUTE=false

# Expondo a porta padrão
EXPOSE 8080

# Comando de inicialização
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev"]
