connection: "bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: vandelay3_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vandelay3_looker_default_datagroup

#explore: payer {}
explore: temp_exception {from:temp_exception}
explore: temp_recon {from:temp_recon}
explore:  exception{from:exception}
explore: reconciliation {from:reconciliation}

explore:  exep_reocn{
  label: "exep_reocn"
  view_name: temp_recon
    join: temp_exception {
      type: inner
      relationship: one_to_one
      sql_on: ${temp_recon.application_id}=${temp_exception.application_id}
             and  ${temp_recon.source_name}=${temp_exception.data_source}
            and ${temp_recon.audit_load_id}=${temp_exception.audit_load_id};;
              # ${temp_recon.table_name}=${temp_exception.table_nm};;
                 # and ${temp_exception.run_date_date}=${temp_recon.run_date_date}



#      and ${temp_recon.application_id}='V3_EMR1_LOAD'
    }
}
