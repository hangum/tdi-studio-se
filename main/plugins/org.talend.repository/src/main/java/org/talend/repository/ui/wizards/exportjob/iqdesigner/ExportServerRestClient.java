package org.talend.repository.ui.wizards.exportjob.iqdesigner;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;

/**
 * Export Server
 * 
 * <pre>
 * 	using : https://github.com/Mashape/unirest-java
 * 
 * </pre>
 * 
 * @author hangum
 *
 */
public class ExportServerRestClient {
	
	public static final String URL_AUTH = "/auth";
	
	/**
	 * auth
	 * 
	 * @param vo
	 * @throws Exception
	 */
	public static void auth(ExporterServerVO vo) throws Exception {
		HttpResponse<JsonNode> response = Unirest.get(vo.getHost() + URL_AUTH).basicAuth(vo.getId(), vo.getPasswd()).asJson();
		System.out.println("auth status : " + response.getStatus() + ", msg" + response.getStatusText());
		if(response.getStatus() != 200) throw new Exception(response.getStatus() + " msg is " + response.getStatusText());
	}
	
	/**
	 * file send
	 * 
	 * @param vo
	 * @throws Exception
	 */
	public static void fileSend(ExporterServerVO vo) throws Exception {
		HttpResponse<JsonNode> response = Unirest.post(vo.getHost() + vo.getJob_path())
				  .header("accept", "application/json")
				  .field("file", new File(vo.getAbsoluteFilePath()))
				  .asJson();
		
		if(response.getStatus() != 200) throw new Exception(response.getStatus() + " msg is " + response.getStatusText());
	}

	/**
	 * 
	 * @param vo
	 * @throws Exception
	 */
	public static void test(ExporterServerVO vo) throws Exception {
		Map<String, String> mapHead = new HashMap<String, String>();
		mapHead.put("TDB_ACCESS_KEY", vo.getId());
		mapHead.put("TDB_SECRET_KEY", vo.getPasswd());
		
		HttpResponse<JsonNode> response = Unirest.get(vo.getHost() + vo.getJob_path())
				  .headers(mapHead)
				  .asJson()
				  ;
		System.out.println(response.getStatus() + ":" + response.getStatusText());
		if(response.getStatus() != 200) throw new Exception(response.getStatus() + " msg is " + response.getStatusText());
		JsonNode body = response.getBody();
		System.out.println("result : " + body);
	}
	
	public static void main(String[] args) {
		ExporterServerVO exportVo = new ExporterServerVO();
		exportVo.setId("16eda786-42e3-498e-83a9-381801da0505");
		exportVo.setPasswd("49509165-9f8b-47d2-9c43-b1297ef7ef76");
		
		exportVo.setHost("http://127.0.0.1:8080/tadpoleapi/rest/base/ct/");
		exportVo.setJob_path("search?COUNTRY_ID=AU&resultType=JSON");
		exportVo.setAbsoluteFilePath("");
		
		try {
			ExportServerRestClient client = new ExportServerRestClient();
			client.test(exportVo);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
