databases=("airbyte" "asset_service" "auth_service" "cadence" "cadence_visibility" "auth_service_keycloak" "data_analysis_service" "data_product_service" "dbt_transformations_service" "ml_service" "pipeline_service" "product_service" "sql_transformations_service" "streaming_source_connector_service" "superset_service")

export PGPASSWORD='<password>';
export PGHOST='<db-host>';
export USER='<db-user>';
for db in ${databases[@]};
do
  echo "Creating database $db"
  psql -U $USER -h $PGHOST -c "create database $db";
done
echo All done
