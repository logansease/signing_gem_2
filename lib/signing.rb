class Signing
  require 'MyOwnId-Java.jar'
  require 'aspose-pdf-10.1.0.jar'

  java_import com.myownid.java.SignPdf

  def self.signWith templateFile, photoImage, idImage, signatureImage

    cert =  IO.binread('config/TestCert.pfx')
    result = SignPdf.SignPdf(templateFile.to_java_bytes, photoImage.to_java_bytes, idImage.to_java_bytes, signatureImage.to_java_bytes, cert.to_java_bytes,
                             java.lang.String.new("TestCert"), java.lang.String.new(""),java.lang.String.new(""))

  end

end
