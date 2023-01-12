struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var x_267 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlat10 : f32;
  var u_xlat18 : f32;
  var u_xlat11 : f32;
  var u_xlat19 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat24 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat24;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat24 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat24;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat24 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat24;
  let x_107 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_113 : vec3<f32> = vs_TEXCOORD5;
  let x_118 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_113.y, x_113.y, x_113.y) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_123 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_125 : vec3<f32> = vs_TEXCOORD5;
  let x_128 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_125.x, x_125.x, x_125.x)) + x_128);
  let x_132 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_134 : vec3<f32> = vs_TEXCOORD5;
  let x_137 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.z, x_134.z, x_134.z)) + x_137);
  let x_139 : vec3<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_139 + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_146 : vec3<f32> = vs_TEXCOORD5;
  let x_150 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_151 : vec3<f32> = (-(x_146) + x_150);
  let x_152 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_159 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_159;
  let x_163 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_163;
  let x_167 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_167;
  let x_169 : vec4<f32> = u_xlat5;
  let x_171 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_169.x, x_169.y, x_169.z), vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec3<f32> = vs_TEXCOORD5;
  let x_177 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_180 : vec3<f32> = (x_174 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec4<f32> = u_xlat5;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat25 = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_189);
  let x_191 : f32 = u_xlat24;
  let x_193 : f32 = u_xlat25;
  u_xlat25 = (-(x_191) + x_193);
  let x_197 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_198 : f32 = u_xlat25;
  let x_200 : f32 = u_xlat24;
  u_xlat24 = ((x_197 * x_198) + x_200);
  let x_202 : f32 = u_xlat24;
  let x_205 : f32 = x_33.x_LightShadowData.z;
  let x_208 : f32 = x_33.x_LightShadowData.w;
  u_xlat24 = ((x_202 * x_205) + x_208);
  let x_210 : f32 = u_xlat24;
  u_xlat24 = clamp(x_210, 0.0f, 1.0f);
  let x_219 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_219 == 1.0f);
  let x_221 : bool = u_xlatb25;
  if (x_221) {
    let x_225 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_225 == 1.0f);
    let x_227 : vec3<f32> = vs_TEXCOORD5;
    let x_231 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_233 : vec3<f32> = (vec3<f32>(x_227.y, x_227.y, x_227.y) * vec3<f32>(x_231.x, x_231.y, x_231.z));
    let x_234 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_237 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_239 : vec3<f32> = vs_TEXCOORD5;
    let x_242 : vec4<f32> = u_xlat5;
    let x_244 : vec3<f32> = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239.x, x_239.x, x_239.x)) + vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_248 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_250 : vec3<f32> = vs_TEXCOORD5;
    let x_253 : vec4<f32> = u_xlat5;
    let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_258 : vec4<f32> = u_xlat5;
    let x_261 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_263 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + vec3<f32>(x_261.x, x_261.y, x_261.z));
    let x_264 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
    let x_266 : bool = u_xlatb25;
    if (x_266) {
      let x_270 : vec4<f32> = u_xlat5;
      x_267 = vec3<f32>(x_270.x, x_270.y, x_270.z);
    } else {
      let x_273 : vec3<f32> = vs_TEXCOORD5;
      x_267 = x_273;
    }
    let x_274 : vec3<f32> = x_267;
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat5;
    let x_281 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_283 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) + -(x_281));
    let x_284 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat5;
    let x_290 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) * x_290);
    let x_292 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_292.x, x_291.x, x_291.y, x_291.z);
    let x_295 : f32 = u_xlat5.y;
    u_xlat25 = ((x_295 * 0.25f) + 0.75f);
    let x_302 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_302 * 0.5f) + 0.75f);
    let x_306 : f32 = u_xlat25;
    let x_307 : f32 = u_xlat26;
    u_xlat5.x = max(x_306, x_307);
    let x_318 : vec4<f32> = u_xlat5;
    let x_320 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_318.x, x_318.z, x_318.w));
    u_xlat5 = x_320;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_326 : vec4<f32> = u_xlat5;
  let x_329 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_326, x_329);
  let x_331 : f32 = u_xlat25;
  u_xlat25 = clamp(x_331, 0.0f, 1.0f);
  let x_334 : f32 = u_xlat24;
  u_xlatb26 = (x_334 < 0.99000001f);
  let x_337 : bool = u_xlatb26;
  if (x_337) {
    let x_340 : vec3<f32> = vs_TEXCOORD5;
    let x_342 : vec4<f32> = x_33.x_LightPositionRange;
    let x_345 : vec3<f32> = (x_340 + -(vec3<f32>(x_342.x, x_342.y, x_342.z)));
    let x_346 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
    let x_349 : f32 = u_xlat5.y;
    let x_352 : f32 = u_xlat5.x;
    u_xlat26 = max(abs(x_349), abs(x_352));
    let x_356 : f32 = u_xlat5.z;
    let x_358 : f32 = u_xlat26;
    u_xlat26 = max(abs(x_356), x_358);
    let x_360 : f32 = u_xlat26;
    let x_362 : f32 = x_33.x_LightProjectionParams.z;
    u_xlat26 = (x_360 + -(x_362));
    let x_365 : f32 = u_xlat26;
    u_xlat26 = max(x_365, 0.00001f);
    let x_368 : f32 = u_xlat26;
    let x_370 : f32 = x_33.x_LightProjectionParams.w;
    u_xlat26 = (x_368 * x_370);
    let x_373 : f32 = x_33.x_LightProjectionParams.y;
    let x_374 : f32 = u_xlat26;
    u_xlat26 = (x_373 / x_374);
    let x_376 : f32 = u_xlat26;
    let x_378 : f32 = x_33.x_LightProjectionParams.x;
    u_xlat26 = (x_376 + -(x_378));
    let x_381 : f32 = u_xlat26;
    u_xlat26 = (-(x_381) + 1.0f);
    let x_384 : vec4<f32> = u_xlat5;
    let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_389 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    let x_392 : vec4<f32> = u_xlat6;
    let x_393 : vec3<f32> = vec3<f32>(x_392.x, x_392.y, x_392.z);
    let x_394 : f32 = u_xlat26;
    txVec0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394);
    let x_407 : vec4<f32> = txVec0;
    let x_409 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_407.xyz, x_407.w);
    u_xlat6.x = x_409;
    let x_412 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_412.x, x_412.y, x_412.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_418 : vec3<f32> = u_xlat7;
    let x_419 : f32 = u_xlat26;
    txVec1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419);
    let x_427 : vec4<f32> = txVec1;
    let x_429 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_427.xyz, x_427.w);
    u_xlat6.y = x_429;
    let x_431 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_431.x, x_431.y, x_431.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_436 : vec3<f32> = u_xlat7;
    let x_437 : f32 = u_xlat26;
    txVec2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437);
    let x_445 : vec4<f32> = txVec2;
    let x_447 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_445.xyz, x_445.w);
    u_xlat6.z = x_447;
    let x_449 : vec4<f32> = u_xlat5;
    let x_452 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_453 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
    let x_456 : vec4<f32> = u_xlat5;
    let x_457 : vec3<f32> = vec3<f32>(x_456.x, x_456.y, x_456.z);
    let x_458 : f32 = u_xlat26;
    txVec3 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458);
    let x_466 : vec4<f32> = txVec3;
    let x_468 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_466.xyz, x_466.w);
    u_xlat6.w = x_468;
    let x_470 : vec4<f32> = u_xlat6;
    u_xlat26 = dot(x_470, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_475 : f32 = x_33.x_LightShadowData.x;
    u_xlat27 = (-(x_475) + 1.0f);
    let x_478 : f32 = u_xlat26;
    let x_479 : f32 = u_xlat27;
    let x_482 : f32 = x_33.x_LightShadowData.x;
    u_xlat26 = ((x_478 * x_479) + x_482);
  } else {
    u_xlat26 = 1.0f;
  }
  let x_485 : f32 = u_xlat25;
  let x_486 : f32 = u_xlat26;
  u_xlat25 = (x_485 + -(x_486));
  let x_489 : f32 = u_xlat24;
  let x_490 : f32 = u_xlat25;
  let x_492 : f32 = u_xlat26;
  u_xlat24 = ((x_489 * x_490) + x_492);
  let x_494 : vec3<f32> = u_xlat4;
  let x_495 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_494, x_495);
  let x_502 : f32 = u_xlat25;
  let x_504 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_502, x_502));
  u_xlat25 = x_504.x;
  let x_514 : vec3<f32> = u_xlat4;
  let x_515 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_514);
  u_xlat26 = x_515.w;
  let x_517 : f32 = u_xlat25;
  let x_518 : f32 = u_xlat26;
  u_xlat25 = (x_517 * x_518);
  let x_520 : f32 = u_xlat24;
  let x_521 : f32 = u_xlat25;
  u_xlat24 = (x_520 * x_521);
  let x_526 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_526;
  let x_530 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_530;
  let x_533 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_533;
  let x_535 : vec3<f32> = u_xlat4;
  let x_536 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_535, x_536);
  let x_538 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_538);
  let x_540 : f32 = u_xlat25;
  let x_542 : vec3<f32> = u_xlat4;
  let x_543 : vec3<f32> = (vec3<f32>(x_540, x_540, x_540) * x_542);
  let x_544 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : f32 = u_xlat24;
  let x_550 : vec4<f32> = x_33.x_LightColor0;
  let x_552 : vec3<f32> = (vec3<f32>(x_546, x_546, x_546) * vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_557 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_557) + 1.0f);
  let x_560 : vec3<f32> = u_xlat4;
  let x_561 : f32 = u_xlat25;
  let x_564 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_560 * vec3<f32>(x_561, x_561, x_561)) + -(x_564));
  let x_567 : vec3<f32> = u_xlat4;
  let x_568 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_567, x_568);
  let x_570 : f32 = u_xlat25;
  u_xlat25 = max(x_570, 0.001f);
  let x_573 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_573);
  let x_575 : f32 = u_xlat25;
  let x_577 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_575, x_575, x_575) * x_577);
  let x_579 : vec4<f32> = u_xlat2;
  let x_581 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_579.x, x_579.y, x_579.z), -(x_581));
  let x_584 : vec4<f32> = u_xlat2;
  let x_586 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_584.x, x_584.y, x_584.z), vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : f32 = u_xlat26;
  u_xlat26 = clamp(x_589, 0.0f, 1.0f);
  let x_591 : vec4<f32> = u_xlat2;
  let x_593 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_591.x, x_591.y, x_591.z), x_593);
  let x_597 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_597, 0.0f, 1.0f);
  let x_601 : vec4<f32> = u_xlat5;
  let x_603 : vec3<f32> = u_xlat4;
  u_xlat10 = dot(vec3<f32>(x_601.x, x_601.y, x_601.z), x_603);
  let x_605 : f32 = u_xlat10;
  u_xlat10 = clamp(x_605, 0.0f, 1.0f);
  let x_608 : f32 = u_xlat10;
  let x_609 : f32 = u_xlat10;
  u_xlat18 = (x_608 * x_609);
  let x_611 : f32 = u_xlat18;
  let x_613 : f32 = u_xlat24;
  u_xlat18 = dot(vec2<f32>(x_611, x_611), vec2<f32>(x_613, x_613));
  let x_616 : f32 = u_xlat18;
  u_xlat18 = (x_616 + -0.5f);
  let x_619 : f32 = u_xlat26;
  u_xlat3.x = (-(x_619) + 1.0f);
  let x_625 : f32 = u_xlat3.x;
  let x_627 : f32 = u_xlat3.x;
  u_xlat11 = (x_625 * x_627);
  let x_629 : f32 = u_xlat11;
  let x_630 : f32 = u_xlat11;
  u_xlat11 = (x_629 * x_630);
  let x_633 : f32 = u_xlat3.x;
  let x_634 : f32 = u_xlat11;
  u_xlat3.x = (x_633 * x_634);
  let x_637 : f32 = u_xlat18;
  let x_639 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_637 * x_639) + 1.0f);
  let x_643 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_643)) + 1.0f);
  let x_648 : f32 = u_xlat11;
  let x_649 : f32 = u_xlat11;
  u_xlat19 = (x_648 * x_649);
  let x_651 : f32 = u_xlat19;
  let x_652 : f32 = u_xlat19;
  u_xlat19 = (x_651 * x_652);
  let x_654 : f32 = u_xlat11;
  let x_655 : f32 = u_xlat19;
  u_xlat11 = (x_654 * x_655);
  let x_657 : f32 = u_xlat18;
  let x_658 : f32 = u_xlat11;
  u_xlat18 = ((x_657 * x_658) + 1.0f);
  let x_661 : f32 = u_xlat18;
  let x_663 : f32 = u_xlat3.x;
  u_xlat18 = (x_661 * x_663);
  let x_665 : f32 = u_xlat26;
  let x_666 : f32 = u_xlat18;
  u_xlat18 = (x_665 * x_666);
  let x_668 : f32 = u_xlat24;
  let x_669 : f32 = u_xlat24;
  u_xlat24 = (x_668 * x_669);
  let x_671 : f32 = u_xlat24;
  u_xlat24 = max(x_671, 0.002f);
  let x_674 : f32 = u_xlat24;
  u_xlat3.x = (-(x_674) + 1.0f);
  let x_678 : f32 = u_xlat25;
  let x_681 : f32 = u_xlat3.x;
  let x_683 : f32 = u_xlat24;
  u_xlat11 = ((abs(x_678) * x_681) + x_683);
  let x_685 : f32 = u_xlat26;
  let x_687 : f32 = u_xlat3.x;
  let x_689 : f32 = u_xlat24;
  u_xlat3.x = ((x_685 * x_687) + x_689);
  let x_692 : f32 = u_xlat25;
  let x_695 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_692) * x_695);
  let x_697 : f32 = u_xlat26;
  let x_698 : f32 = u_xlat11;
  let x_700 : f32 = u_xlat25;
  u_xlat25 = ((x_697 * x_698) + x_700);
  let x_702 : f32 = u_xlat25;
  u_xlat25 = (x_702 + 0.00001f);
  let x_704 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_704);
  let x_706 : f32 = u_xlat24;
  let x_707 : f32 = u_xlat24;
  u_xlat24 = (x_706 * x_707);
  let x_710 : f32 = u_xlat2.x;
  let x_711 : f32 = u_xlat24;
  let x_714 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_710 * x_711) + -(x_714));
  let x_719 : f32 = u_xlat3.x;
  let x_721 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_719 * x_721) + 1.0f);
  let x_725 : f32 = u_xlat24;
  u_xlat24 = (x_725 * 0.318309873f);
  let x_729 : f32 = u_xlat2.x;
  let x_731 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_729 * x_731) + 0.0000001f);
  let x_736 : f32 = u_xlat24;
  let x_738 : f32 = u_xlat2.x;
  u_xlat24 = (x_736 / x_738);
  let x_740 : f32 = u_xlat24;
  let x_741 : f32 = u_xlat25;
  u_xlat24 = (x_740 * x_741);
  let x_743 : f32 = u_xlat26;
  let x_744 : f32 = u_xlat24;
  u_xlat24 = (x_743 * x_744);
  let x_746 : f32 = u_xlat24;
  u_xlat24 = (x_746 * 3.141592741f);
  let x_749 : f32 = u_xlat24;
  u_xlat24 = max(x_749, 0.0f);
  let x_751 : vec3<f32> = u_xlat0;
  let x_752 : vec3<f32> = u_xlat0;
  u_xlat25 = dot(x_751, x_752);
  let x_754 : f32 = u_xlat25;
  u_xlatb25 = !((x_754 == 0.0f));
  let x_756 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_756);
  let x_758 : f32 = u_xlat24;
  let x_759 : f32 = u_xlat25;
  u_xlat24 = (x_758 * x_759);
  let x_761 : f32 = u_xlat18;
  let x_763 : vec4<f32> = u_xlat6;
  let x_765 : vec3<f32> = (vec3<f32>(x_761, x_761, x_761) * vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_765.x, x_766.y, x_765.y, x_765.z);
  let x_768 : vec4<f32> = u_xlat6;
  let x_770 : f32 = u_xlat24;
  u_xlat3 = (vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_770, x_770, x_770));
  let x_773 : f32 = u_xlat10;
  u_xlat24 = (-(x_773) + 1.0f);
  let x_776 : f32 = u_xlat24;
  let x_777 : f32 = u_xlat24;
  u_xlat25 = (x_776 * x_777);
  let x_779 : f32 = u_xlat25;
  let x_780 : f32 = u_xlat25;
  u_xlat25 = (x_779 * x_780);
  let x_782 : f32 = u_xlat24;
  let x_783 : f32 = u_xlat25;
  u_xlat24 = (x_782 * x_783);
  let x_785 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_785) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_789 : vec3<f32> = u_xlat4;
  let x_790 : f32 = u_xlat24;
  let x_793 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_789 * vec3<f32>(x_790, x_790, x_790)) + x_793);
  let x_795 : vec3<f32> = u_xlat0;
  let x_796 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_795 * x_796);
  let x_798 : vec3<f32> = u_xlat1;
  let x_799 : vec4<f32> = u_xlat2;
  let x_802 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_798 * vec3<f32>(x_799.x, x_799.z, x_799.w)) + x_802);
  let x_805 : f32 = vs_TEXCOORD1.w;
  let x_807 : f32 = x_33.x_ProjectionParams.y;
  u_xlat24 = (x_805 / x_807);
  let x_809 : f32 = u_xlat24;
  u_xlat24 = (-(x_809) + 1.0f);
  let x_812 : f32 = u_xlat24;
  let x_814 : f32 = x_33.x_ProjectionParams.z;
  u_xlat24 = (x_812 * x_814);
  let x_816 : f32 = u_xlat24;
  u_xlat24 = max(x_816, 0.0f);
  let x_818 : f32 = u_xlat24;
  let x_821 : f32 = x_33.unity_FogParams.x;
  u_xlat24 = (x_818 * x_821);
  let x_823 : f32 = u_xlat24;
  let x_824 : f32 = u_xlat24;
  u_xlat24 = (x_823 * -(x_824));
  let x_827 : f32 = u_xlat24;
  u_xlat24 = exp2(x_827);
  let x_831 : vec3<f32> = u_xlat0;
  let x_832 : f32 = u_xlat24;
  let x_834 : vec3<f32> = (x_831 * vec3<f32>(x_832, x_832, x_832));
  let x_835 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

