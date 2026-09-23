import crypto from "node:crypto";

process.loadEnvFile(".env")

const WEBHOOK_SECRET = process.env.GITHUB_WEBHOOK_SECRET!;

export function createHmacSign(data: any) {
  const expectedSignature =
    "sha256=" +
    crypto.createHmac("sha256", WEBHOOK_SECRET).update(data).digest("hex");
  return expectedSignature;
}

/* const expectedSignature =
  "sha256=" + crypto.createHmac("sha256", WEBHOOK_SECRET).digest("hex");
console.log("web hook", expectedSignature); */

export function verifySign(signature: string, data: any) {
  const expectedSignature = createHmacSign(data);

  if (signature !== expectedSignature) return false;
  return true;
}
