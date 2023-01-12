struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
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
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_268 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat21 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat21;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat23 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat23;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_131 : f32 = u_xlat21;
  u_xlat24 = (-(x_131) + 1.0f);
  let x_139 : f32 = u_xlat1.w;
  let x_140 : f32 = u_xlat21;
  let x_142 : f32 = u_xlat24;
  SV_Target0.w = ((x_139 * x_140) + x_142);
  let x_149 : vec3<f32> = vs_TEXCOORD5;
  let x_154 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  let x_155 : vec3<f32> = (-(x_149) + x_154);
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_162 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat5.x = x_162;
  let x_166 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat5.y = x_166;
  let x_171 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat5.z = x_171;
  let x_173 : vec4<f32> = u_xlat4;
  let x_175 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_173.x, x_173.y, x_173.z), x_175);
  let x_177 : vec3<f32> = vs_TEXCOORD5;
  let x_180 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec4<f32> = u_xlat4;
  let x_189 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_192);
  let x_194 : f32 = u_xlat21;
  let x_196 : f32 = u_xlat22;
  u_xlat22 = (-(x_194) + x_196);
  let x_199 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_200 : f32 = u_xlat22;
  let x_202 : f32 = u_xlat21;
  u_xlat21 = ((x_199 * x_200) + x_202);
  let x_204 : f32 = u_xlat21;
  let x_207 : f32 = x_32.x_LightShadowData.z;
  let x_210 : f32 = x_32.x_LightShadowData.w;
  u_xlat21 = ((x_204 * x_207) + x_210);
  let x_212 : f32 = u_xlat21;
  u_xlat21 = clamp(x_212, 0.0f, 1.0f);
  let x_220 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_220 == 1.0f);
  let x_222 : bool = u_xlatb22;
  if (x_222) {
    let x_226 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_226 == 1.0f);
    let x_228 : vec3<f32> = vs_TEXCOORD5;
    let x_232 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_234 : vec3<f32> = (vec3<f32>(x_228.y, x_228.y, x_228.y) * vec3<f32>(x_232.x, x_232.y, x_232.z));
    let x_235 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_238 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_240 : vec3<f32> = vs_TEXCOORD5;
    let x_243 : vec4<f32> = u_xlat4;
    let x_245 : vec3<f32> = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_246 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_249 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_251 : vec3<f32> = vs_TEXCOORD5;
    let x_254 : vec4<f32> = u_xlat4;
    let x_256 : vec3<f32> = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.z, x_251.z, x_251.z)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
    let x_257 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_259 : vec4<f32> = u_xlat4;
    let x_262 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_264 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + vec3<f32>(x_262.x, x_262.y, x_262.z));
    let x_265 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
    let x_267 : bool = u_xlatb22;
    if (x_267) {
      let x_271 : vec4<f32> = u_xlat4;
      x_268 = vec3<f32>(x_271.x, x_271.y, x_271.z);
    } else {
      let x_274 : vec3<f32> = vs_TEXCOORD5;
      x_268 = x_274;
    }
    let x_275 : vec3<f32> = x_268;
    let x_276 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
    let x_278 : vec4<f32> = u_xlat4;
    let x_282 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_284 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + -(x_282));
    let x_285 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : vec4<f32> = u_xlat4;
    let x_291 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_292 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) * x_291);
    let x_293 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_293.x, x_292.x, x_292.y, x_292.z);
    let x_296 : f32 = u_xlat4.y;
    u_xlat22 = ((x_296 * 0.25f) + 0.75f);
    let x_302 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_302 * 0.5f) + 0.75f);
    let x_306 : f32 = u_xlat22;
    let x_307 : f32 = u_xlat24;
    u_xlat4.x = max(x_306, x_307);
    let x_318 : vec4<f32> = u_xlat4;
    let x_320 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_318.x, x_318.z, x_318.w));
    u_xlat4 = x_320;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_326 : vec4<f32> = u_xlat4;
  let x_328 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_326, x_328);
  let x_330 : f32 = u_xlat22;
  u_xlat22 = clamp(x_330, 0.0f, 1.0f);
  let x_333 : vec4<f32> = vs_TEXCOORD7;
  let x_335 : vec4<f32> = vs_TEXCOORD7;
  let x_337 : vec2<f32> = (vec2<f32>(x_333.x, x_333.y) / vec2<f32>(x_335.w, x_335.w));
  let x_338 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_337.x, x_337.y, x_338.z, x_338.w);
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_345.x, x_345.y));
  u_xlat24 = x_347.x;
  let x_349 : f32 = u_xlat22;
  let x_350 : f32 = u_xlat24;
  u_xlat22 = (x_349 + -(x_350));
  let x_353 : f32 = u_xlat21;
  let x_354 : f32 = u_xlat22;
  let x_356 : f32 = u_xlat24;
  u_xlat21 = ((x_353 * x_354) + x_356);
  let x_358 : f32 = u_xlat21;
  let x_362 : vec4<f32> = x_32.x_LightColor0;
  let x_364 : vec3<f32> = (vec3<f32>(x_358, x_358, x_358) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_369 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_369) + 1.0f);
  let x_375 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_375;
  let x_379 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_379;
  let x_382 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_382;
  let x_385 : vec4<f32> = vs_TEXCOORD1;
  let x_388 : f32 = u_xlat23;
  let x_391 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_385.x, x_385.y, x_385.z)) * vec3<f32>(x_388, x_388, x_388)) + x_391);
  let x_393 : vec3<f32> = u_xlat6;
  let x_394 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_393, x_394);
  let x_396 : f32 = u_xlat22;
  u_xlat22 = max(x_396, 0.001f);
  let x_399 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_399);
  let x_401 : f32 = u_xlat22;
  let x_403 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_401, x_401, x_401) * x_403);
  let x_405 : vec4<f32> = u_xlat2;
  let x_407 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_405.x, x_405.y, x_405.z), -(x_407));
  let x_410 : vec4<f32> = u_xlat2;
  let x_412 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_410.x, x_410.y, x_410.z), x_412);
  let x_414 : f32 = u_xlat23;
  u_xlat23 = clamp(x_414, 0.0f, 1.0f);
  let x_416 : vec4<f32> = u_xlat2;
  let x_418 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_416.x, x_416.y, x_416.z), x_418);
  let x_422 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_422, 0.0f, 1.0f);
  let x_426 : vec3<f32> = u_xlat5;
  let x_427 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_426, x_427);
  let x_429 : f32 = u_xlat9;
  u_xlat9 = clamp(x_429, 0.0f, 1.0f);
  let x_432 : f32 = u_xlat9;
  let x_433 : f32 = u_xlat9;
  u_xlat16 = (x_432 * x_433);
  let x_435 : f32 = u_xlat16;
  let x_437 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_435, x_435), vec2<f32>(x_437, x_437));
  let x_440 : f32 = u_xlat16;
  u_xlat16 = (x_440 + -0.5f);
  let x_443 : f32 = u_xlat23;
  u_xlat3.x = (-(x_443) + 1.0f);
  let x_449 : f32 = u_xlat3.x;
  let x_451 : f32 = u_xlat3.x;
  u_xlat10 = (x_449 * x_451);
  let x_453 : f32 = u_xlat10;
  let x_454 : f32 = u_xlat10;
  u_xlat10 = (x_453 * x_454);
  let x_457 : f32 = u_xlat3.x;
  let x_458 : f32 = u_xlat10;
  u_xlat3.x = (x_457 * x_458);
  let x_461 : f32 = u_xlat16;
  let x_463 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_461 * x_463) + 1.0f);
  let x_467 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_467)) + 1.0f);
  let x_472 : f32 = u_xlat10;
  let x_473 : f32 = u_xlat10;
  u_xlat17 = (x_472 * x_473);
  let x_475 : f32 = u_xlat17;
  let x_476 : f32 = u_xlat17;
  u_xlat17 = (x_475 * x_476);
  let x_478 : f32 = u_xlat10;
  let x_479 : f32 = u_xlat17;
  u_xlat10 = (x_478 * x_479);
  let x_481 : f32 = u_xlat16;
  let x_482 : f32 = u_xlat10;
  u_xlat16 = ((x_481 * x_482) + 1.0f);
  let x_485 : f32 = u_xlat16;
  let x_487 : f32 = u_xlat3.x;
  u_xlat16 = (x_485 * x_487);
  let x_489 : f32 = u_xlat23;
  let x_490 : f32 = u_xlat16;
  u_xlat16 = (x_489 * x_490);
  let x_492 : f32 = u_xlat21;
  let x_493 : f32 = u_xlat21;
  u_xlat21 = (x_492 * x_493);
  let x_495 : f32 = u_xlat21;
  u_xlat21 = max(x_495, 0.002f);
  let x_498 : f32 = u_xlat21;
  u_xlat3.x = (-(x_498) + 1.0f);
  let x_502 : f32 = u_xlat22;
  let x_505 : f32 = u_xlat3.x;
  let x_507 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_502) * x_505) + x_507);
  let x_509 : f32 = u_xlat23;
  let x_511 : f32 = u_xlat3.x;
  let x_513 : f32 = u_xlat21;
  u_xlat3.x = ((x_509 * x_511) + x_513);
  let x_516 : f32 = u_xlat22;
  let x_519 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_516) * x_519);
  let x_521 : f32 = u_xlat23;
  let x_522 : f32 = u_xlat10;
  let x_524 : f32 = u_xlat22;
  u_xlat22 = ((x_521 * x_522) + x_524);
  let x_526 : f32 = u_xlat22;
  u_xlat22 = (x_526 + 0.00001f);
  let x_529 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_529);
  let x_531 : f32 = u_xlat21;
  let x_532 : f32 = u_xlat21;
  u_xlat21 = (x_531 * x_532);
  let x_535 : f32 = u_xlat2.x;
  let x_536 : f32 = u_xlat21;
  let x_539 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_535 * x_536) + -(x_539));
  let x_544 : f32 = u_xlat3.x;
  let x_546 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_544 * x_546) + 1.0f);
  let x_550 : f32 = u_xlat21;
  u_xlat21 = (x_550 * 0.318309873f);
  let x_554 : f32 = u_xlat2.x;
  let x_556 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_554 * x_556) + 0.0000001f);
  let x_561 : f32 = u_xlat21;
  let x_563 : f32 = u_xlat2.x;
  u_xlat21 = (x_561 / x_563);
  let x_565 : f32 = u_xlat21;
  let x_566 : f32 = u_xlat22;
  u_xlat21 = (x_565 * x_566);
  let x_568 : f32 = u_xlat23;
  let x_569 : f32 = u_xlat21;
  u_xlat21 = (x_568 * x_569);
  let x_571 : f32 = u_xlat21;
  u_xlat21 = (x_571 * 3.141592741f);
  let x_574 : f32 = u_xlat21;
  u_xlat21 = max(x_574, 0.0f);
  let x_576 : vec4<f32> = u_xlat0;
  let x_578 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_576.x, x_576.y, x_576.z), vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : f32 = u_xlat22;
  u_xlatb22 = !((x_581 == 0.0f));
  let x_583 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_583);
  let x_585 : f32 = u_xlat21;
  let x_586 : f32 = u_xlat22;
  u_xlat21 = (x_585 * x_586);
  let x_588 : f32 = u_xlat16;
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec3<f32> = (vec3<f32>(x_588, x_588, x_588) * vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_592.x, x_593.y, x_592.y, x_592.z);
  let x_595 : vec4<f32> = u_xlat4;
  let x_597 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_597, x_597, x_597));
  let x_600 : f32 = u_xlat9;
  u_xlat21 = (-(x_600) + 1.0f);
  let x_603 : f32 = u_xlat21;
  let x_604 : f32 = u_xlat21;
  u_xlat22 = (x_603 * x_604);
  let x_606 : f32 = u_xlat22;
  let x_607 : f32 = u_xlat22;
  u_xlat22 = (x_606 * x_607);
  let x_609 : f32 = u_xlat21;
  let x_610 : f32 = u_xlat22;
  u_xlat21 = (x_609 * x_610);
  let x_612 : vec4<f32> = u_xlat0;
  let x_616 : vec3<f32> = (-(vec3<f32>(x_612.x, x_612.y, x_612.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : f32 = u_xlat21;
  let x_624 : vec4<f32> = u_xlat0;
  let x_626 : vec3<f32> = ((vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(x_621, x_621, x_621)) + vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat0;
  let x_631 : vec3<f32> = u_xlat3;
  let x_632 : vec3<f32> = (vec3<f32>(x_629.x, x_629.y, x_629.z) * x_631);
  let x_633 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat1;
  let x_637 : vec4<f32> = u_xlat2;
  let x_640 : vec4<f32> = u_xlat0;
  let x_642 : vec3<f32> = ((vec3<f32>(x_635.x, x_635.y, x_635.z) * vec3<f32>(x_637.x, x_637.z, x_637.w)) + vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : f32 = vs_TEXCOORD1.w;
  let x_648 : f32 = x_32.x_ProjectionParams.y;
  u_xlat21 = (x_646 / x_648);
  let x_650 : f32 = u_xlat21;
  u_xlat21 = (-(x_650) + 1.0f);
  let x_653 : f32 = u_xlat21;
  let x_655 : f32 = x_32.x_ProjectionParams.z;
  u_xlat21 = (x_653 * x_655);
  let x_657 : f32 = u_xlat21;
  u_xlat21 = max(x_657, 0.0f);
  let x_659 : f32 = u_xlat21;
  let x_662 : f32 = x_32.unity_FogParams.x;
  u_xlat21 = (x_659 * x_662);
  let x_664 : f32 = u_xlat21;
  let x_665 : f32 = u_xlat21;
  u_xlat21 = (x_664 * -(x_665));
  let x_668 : f32 = u_xlat21;
  u_xlat21 = exp2(x_668);
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : f32 = u_xlat21;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672, x_672, x_672));
  let x_675 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

