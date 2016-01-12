package org.talend.repository.ui.wizards.exportjob.iqdesigner;

import java.io.ByteArrayInputStream;
import java.io.File;

import com.mashape.unirest.http.HttpResponse;
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
	
	/**
	 * auth
	 * 
	 * @param vo
	 * @throws Exception
	 */
	public static void authAndFileSend(ExporterServerVO vo) throws Exception {
		HttpResponse response = 
				Unirest.post(vo.getHost()+vo.getJob_path() + "/upload-job-archive")
					//	헤더는 없어야 정상 호출됩니다.
					.basicAuth(vo.getId(), vo.getPasswd())
					.field("file", new File(vo.getAbsoluteFilePath()))
					.asBinary();
		
		System.out.println("===> Status code " + response.getStatus() + ", Status text is " + response.getStatusText());
		ByteArrayInputStream inputStream = (ByteArrayInputStream)response.getBody();
		int readByte = inputStream.read();
		byte[] arryByte = new byte[readByte];
		inputStream.read(arryByte, 0, readByte);
		System.out.println("====> body : " + new String(arryByte));
//		System.out.println(response.getBody());
		
		if(response.getStatus() != 200) throw new Exception("Status code " + response.getStatus() + ", Status text is " + response.getStatusText());
	}
	
	public static void main(String[] args) {
		ExporterServerVO exportVo = new ExporterServerVO();
		exportVo.setId("admin");
		exportVo.setPasswd("admin");
		
//		exportVo.setHost("http://127.0.0.1:9090/projects/1/jobs/");
		exportVo.setHost("http://192.168.0.187:9090/projects/1/jobs/");
		exportVo.setJob_path("1");
		exportVo.setAbsoluteFilePath("/Users/hangum/Downloads/example_shape_file/test_01.zip");
		
		File f = new File(exportVo.getAbsoluteFilePath());
		System.out.println(f.exists());
		
		try {
			ExportServerRestClient client = new ExportServerRestClient();
			client.authAndFileSend(exportVo);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
