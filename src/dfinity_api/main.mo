import Text "mo:base/Text";

actor {

  type HeaderField = ( Text, Text );

  type HttpRequest = object {
    method: Text;
    url: Text;
    headers: [HeaderField];
    body: Blob;
  };

  type HttpResponse = object {
    status_code: Nat16;
    headers: [HeaderField];
    body: Blob;
  };

  public query func http_request(request: HttpRequest) : async HttpResponse {
    return {
      status_code = 200;
      headers = [];
      body = Text.encodeUtf8("Method: " # request.method # "\nURL: " # request.url);
    };
  };

};
