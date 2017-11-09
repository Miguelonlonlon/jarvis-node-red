#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# jv_pg_XX_myfunction () { }
# jv for JarVis
# pg for PluGin
# XX can be a two letters code for your plugin, ex: ww for Weather Wunderground

jv_pg_nr_request () {
	
	node_red_uri=$pg_node_red_uri:$pg_node_red_port/$pg_node_red_endpoint

  node_red_language=${language:0:2}
	
	node_red_datas="order=$order&language=$node_red_language"
  
	node_red_response=$(curl --connect-timeout 2 -s --request POST --url $node_red_uri --header 'content-type: application/x-www-form-urlencoded' --data $node_red_datas | jq -r '.response')

  if [ "$node_red_response" = "null" ]; then
      say "$phrase_misunderstood: $order"
      return
  fi
    
  say "$node_red_response"
}
