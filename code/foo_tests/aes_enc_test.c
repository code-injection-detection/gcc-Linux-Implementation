#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <openssl/evp.h>

int main(int argc, const char* argv[])
{
	unsigned char outbuf[1024];
	int outlen, tmplen;
	unsigned char key[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
	char intext[] = "Some Text tralalalalalalalalalalalalalalalalala\nlalalalalalalalalalalalalalalalalalalalalalalala\n";
	EVP_CIPHER_CTX ctx;
	FILE *out;
	EVP_CIPHER_CTX_init(&ctx);

	EVP_EncryptInit_ex(&ctx, EVP_aes_128_ecb(), NULL, key, NULL);
	if(!EVP_EncryptUpdate(&ctx, outbuf, &outlen, intext, strlen(intext))) {
		/* Error */
		return 0;
	}
	/* Buffer passed to EVP_EncryptFinal() must be after data just
	* encrypted to avoid overwriting it.
	*/
	if(!EVP_EncryptFinal_ex(&ctx, outbuf + outlen, &tmplen))
	{
		/* Error */
		return 0;
	}
	outlen += tmplen;
	EVP_CIPHER_CTX_cleanup(&ctx);
	/* Need binary mode for fopen because encrypted data is
	* binary data. Also cannot use strlen() on it because
	* it wont be null terminated and may contain embedded
	* nulls.
	*/
	out = fopen("aes_out", "wb");
	fwrite(outbuf, 1, outlen, out);
	fclose(out);
	return 0;
}
