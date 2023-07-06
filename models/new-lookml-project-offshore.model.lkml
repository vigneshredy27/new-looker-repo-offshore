connection: "bq_vmss_connnect"

# include all the views
include: "/views/**/*.view"

datagroup: new-lookml-project-offshore_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: new-lookml-project-offshore_default_datagroup

explore: movie_dataset {}
explore: ipl {}
