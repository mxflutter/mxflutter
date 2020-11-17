package com.eclipsesource.v8;

public interface SignatureProvider {
    public byte[] getSignature(String uri);
}
