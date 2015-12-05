set mapred.job.queue.name = biglog;
set hadoop.job.ugi = dt-udw-insight,udwinsight;
set mapred.job.tracker = szwg-lu-job.dmop.baidu.com:54311;

SELECT 

event_time,
event_year,
event_month,
event_weekofyear,
event_dayofmonth,
event_timestamp,
event_ip,
event_country,
event_city,
event_province,
event_isinternalip,
event_httpstatus,
event_url,
event_url_hostname,
event_urlpath,
event_urlparams,
event_useragent,
event_isspider,
event_spiderdetail,
event_baiduid,
event_cookie,
event_referer,
event_refererpath,
event_referer_hostname,
event_refererparams,
event_logid,
event_log_source,
event_location_x,
event_location_y,
event_location_r,
event_location_country,
event_location_city,
event_location_province,
event_location_bizarea,
event_isbroken,
event_invaliddetail,
event_others,
lbs_response_size,
lbs_subsys_lighttpd,
lbs_cost_time_lighttpd,
lbs_http_method,
lbs_http_version,
lbs_gzip,
lbs_os,
lbs_third_party,
event_app_version,
lbs_referer_in_url,
lbs_itj,
lbs_channel,
lbs_resid,
lbs_appid,
lbs_prod,
lbs_route_traffic,
lbs_mobile,
lbs_mode,
lbs_pl_data_type,
lbs_pl_sort_type,
lbs_pl_sort_rule,
lbs_pl_sub_type,
lbs_city,
lbs_from,
lbs_output_format,
lbs_has_telephone,
lbs_res,
lbs_query_type,
lbs_on_gel,
lbs_reqflag,
lbs_screen,
lbs_cpu,
lbs_stat,
lbs_iosmt,
lbs_imrand,
lbs_distance,
lbs_layer,
lbs_button_id,
lbs_net,
lbs_client_time,
lbs_cityid,
lbs_sugs,
lbs_suge,
lbs_bd_page_type,
lbs_keyword,
lbs_query_word,
lbs_startnode,
lbs_endnode,
event_cuid,
event_imei,
lbs_sy,
event_page_number,
lbs_layout,
lbs_nested_url,
lbs_rgc_x,
lbs_rgc_y,
lbs_loc_x,
lbs_loc_y,
event_entrance_type,
event_browser,
event_browser_version,
lbs_flux_source,
lbs_app_source,
lbs_is_navigation,
lbs_is_waycondition,
lbs_is_bus,
lbs_is_driving,
lbs_is_walk,
lbs_open_type_name,
lbs_open_srvc_name,
lbs_caller_resource_type,
lbs_caller_site,
lbs_device_type,
event_os_not_from_ua,
event_os_version_not_from_ua,
event_brand,
lbs_net_provider,
lbs_net_type,
lbs_function_type,
lbs_search_pattern,
lbs_search_entrance,
lbs_search_from,
lbs_icon,
lbs_city_name,
lbs_log_from,
lbs_threadid,
lbs_content_kv,
lbs_filename,
lbs_lineno,
lbs_optime,
lbs_module,
lbs_subsystem,
lbs_errno,
lbs_costtotaltime,
lbs_mapproductfromlog,
lbs_errmsg,
lbs_localip,
lbs_apinfo,
lbs_postongel,
lbs_postwisestatistics,
lbs_posttype,
lbs_postisdrivebusbothhasresult,
lbs_postdatatype,
lbs_postresno,
lbs_postcontrolparameters,
lbs_postfeparameters,
lbs_postbothinsamecity,
lbs_postsourcelc,
lbs_postcityname,
lbs_postcitytype,
lbs_postisupdatecurrentcity,
lbs_postisshowdefaultcity,
lbs_posthasresultcity,
lbs_poststartcity,
lbs_posthasstartpointresult,
lbs_postendcity,
lbs_posthasdestinationcity,
lbs_postisshowweather,
lbs_posthassugq,
lbs_postspecr,
lbs_postopgel,
lbs_postplace,
lbs_poststrategy,
lbs_postqid,
lbs_postuidslist,
lbs_posterrno,
lbs_postplaceex,
lbs_postplacesort,
lbs_postmapuirequrl,
lbs_postsamplingstatistics,
lbs_search_type,
lbs_search_subtype,
lbs_action,
lbs_detail_action,
lbs_decoded_postuidslist,
lbs_ui_layout,
lbs_ui_urlparams,
event_location_district,
event_userid,
lbs_reverse_imei,
event_action,
event_day,
event_hour,
event_product,
lbs_request_source_type

 FROM udw.udw_event
WHERE
event_day = '20151130'
AND  event_hour=10
AND (
 (
 event_action = 'lbsquery'
 OR event_action = 'lbsdrag'
 OR event_action = 'lbsclick'
 OR event_action = 'lbsdisplay'
 OR event_action = 'lbssetting'
 OR  event_action = 'lbsothers')
 -- AND lbs_request_source_type = 'MapMobileApp'
 AND lbs_query_type IN ('s','bd2','hotellist')
);
-- limit 100000;
