DATABASES=("airbyte" "asset_service" "auth_service" "cadence" "cadence_visibility" "auth_service_keycloak" "data_analysis_service" "data_product_service" "dbt_transformations_service" "ml_service" "pipeline_service" "product_service" "sql_transformations_service" "streaming_source_connector_service" "superset_service")

# Update the credentials
export PGUSER='<db-user>';
export PGPASSWORD='<password>';
export PGHOST='<db-host>';

for db in ${DATABASES[@]};
do
  echo "Deleting database $db"
  psql -U $USER -h $PGHOST -c "drop database $db WITH (FORCE)";
done
echo "Cheers! All done :)!"
