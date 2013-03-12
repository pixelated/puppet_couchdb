define couchdb::update ($db, $id, $data, $port='5984') {
  exec { "couch-doc-update --port $port --db $db --id $id --data \'$data\'":
    require => Exec['wait_for_couchdb']
  }
}
