package org.talend.repository.ui.wizards.exportjob.iqdesigner;

import java.io.File;

import org.apache.commons.httpclient.Credentials;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.UsernamePasswordCredentials;
import org.apache.commons.httpclient.auth.AuthScope;
import org.apache.commons.httpclient.methods.FileRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;

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
	 * httpfile upload
	 * 
	 * @param vo
	 * @throws Exception
	 */
	public static void authAndFileSend(ExporterServerVO vo) throws Exception {
		PostMethod filePost = null;
		try {
			// httpClient
			HttpClient client = new HttpClient();
			client.getHttpConnectionManager().getParams().setConnectionTimeout(5000);
			client.getParams().setAuthenticationPreemptive(true);
			Credentials creds = new UsernamePasswordCredentials(vo.getId(), vo.getPasswd());
			client.getState().setCredentials(AuthScope.ANY, creds);
			client.getState().setProxyCredentials(AuthScope.ANY, creds);
			client.getParams().setAuthenticationPreemptive(true);
			
			// post method
			filePost = new PostMethod(vo.getHost() + vo.getJob_path() + "/upload-job-archive");
	//		filePost.addRequestHeader("Content-type", "application/zip");
			filePost.setDoAuthentication(true);
			File file = new File(vo.getAbsoluteFilePath());
			RequestEntity entity = new FileRequestEntity(file, "application/zip");
			filePost.setRequestEntity(entity);

			// execute
			int status = client.executeMethod(filePost);
			  
			System.out.println("[status]" + status + "[response]" + filePost.getResponseBodyAsString(10000));
			if (status != 200) {
				throw new Exception("Status code " + status + ", Status text is " + filePost.getResponseBodyAsString(10000));
			}
		} catch(Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if(filePost != null) filePost.releaseConnection();
		}
			
	}
	
//
//	/**
//	 * auth
//	 * 
//	 * @param vo
//	 * @throws Exception
//	 */
//	public static void authAndFileSend(ExporterServerVO vo) throws Exception {
//		HttpResponse response = Unirest.post(vo.getHost() + vo.getJob_path() + "/upload-job-archive")
//				// 주의: 헤더는 없어야 정상 호출됩니다.
//				.basicAuth(vo.getId(), vo.getPasswd())
//				.field("file", new File(vo.getAbsoluteFilePath()))
//				.asBinary();
//
//		System.out.println("===> Status code " + response.getStatus() + ", Status text is " + response.getStatusText());
//		ByteArrayInputStream inputStream = (ByteArrayInputStream) response.getBody();
//		int readByte = inputStream.read();
//		byte[] arryByte = new byte[readByte];
//		inputStream.read(arryByte, 0, readByte);
//		System.out.println("====> body : " + new String(arryByte));
//
//		if (response.getStatus() != 200)
//			throw new Exception("Status code " + response.getStatus() + ", Status text is " + response.getStatusText());
//	}
//
	public static void main(String[] args) {
		ExporterServerVO exportVo = new ExporterServerVO();
		exportVo.setId("admin");
		exportVo.setPasswd("admin");

		exportVo.setHost("http://127.0.0.1:9090/projects/1/jobs/");
		// exportVo.setHost("http://192.168.0.187:9090/projects/1/jobs/");
		exportVo.setJob_path("1");
		exportVo.setAbsoluteFilePath("/Users/hangum/Downloads/example_shape_file/test_01.zip");

		File f = new File(exportVo.getAbsoluteFilePath());
		System.out.println(f.exists());

		try {
			ExportServerRestClient client = new ExportServerRestClient();
			client.authAndFileSend(exportVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
