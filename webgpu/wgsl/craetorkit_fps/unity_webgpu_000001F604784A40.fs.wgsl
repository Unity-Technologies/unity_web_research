struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
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

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

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
  var u_xlat4 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat5 : vec4<f32>;
  var x_246 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
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
  let x_154 : vec4<f32> = x_32.unity_WorldToLight[1i];
  let x_156 : vec2<f32> = (vec2<f32>(x_149.y, x_149.y) * vec2<f32>(x_154.x, x_154.y));
  let x_157 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_156.x, x_156.y, x_157.z);
  let x_161 : vec4<f32> = x_32.unity_WorldToLight[0i];
  let x_163 : vec3<f32> = vs_TEXCOORD5;
  let x_166 : vec3<f32> = u_xlat4;
  let x_168 : vec2<f32> = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_163.x, x_163.x)) + vec2<f32>(x_166.x, x_166.y));
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_168.x, x_168.y, x_169.z);
  let x_173 : vec4<f32> = x_32.unity_WorldToLight[2i];
  let x_175 : vec3<f32> = vs_TEXCOORD5;
  let x_178 : vec3<f32> = u_xlat4;
  let x_180 : vec2<f32> = ((vec2<f32>(x_173.x, x_173.y) * vec2<f32>(x_175.z, x_175.z)) + vec2<f32>(x_178.x, x_178.y));
  let x_181 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_180.x, x_180.y, x_181.z);
  let x_183 : vec3<f32> = u_xlat4;
  let x_187 : vec4<f32> = x_32.unity_WorldToLight[3i];
  let x_189 : vec2<f32> = (vec2<f32>(x_183.x, x_183.y) + vec2<f32>(x_187.x, x_187.y));
  let x_190 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_189.x, x_189.y, x_190.z);
  let x_196 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_196 == 1.0f);
  let x_198 : bool = u_xlatb21;
  if (x_198) {
    let x_203 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_203 == 1.0f);
    let x_206 : vec3<f32> = vs_TEXCOORD5;
    let x_210 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_212 : vec3<f32> = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_210.x, x_210.y, x_210.z));
    let x_213 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
    let x_216 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_218 : vec3<f32> = vs_TEXCOORD5;
    let x_221 : vec4<f32> = u_xlat5;
    let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218.x, x_218.x, x_218.x)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
    let x_224 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
    let x_227 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_229 : vec3<f32> = vs_TEXCOORD5;
    let x_232 : vec4<f32> = u_xlat5;
    let x_234 : vec3<f32> = ((vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.z, x_229.z, x_229.z)) + vec3<f32>(x_232.x, x_232.y, x_232.z));
    let x_235 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_237 : vec4<f32> = u_xlat5;
    let x_240 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_242 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) + vec3<f32>(x_240.x, x_240.y, x_240.z));
    let x_243 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_245 : bool = u_xlatb21;
    if (x_245) {
      let x_249 : vec4<f32> = u_xlat5;
      x_246 = vec3<f32>(x_249.x, x_249.y, x_249.z);
    } else {
      let x_252 : vec3<f32> = vs_TEXCOORD5;
      x_246 = x_252;
    }
    let x_253 : vec3<f32> = x_246;
    let x_254 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
    let x_256 : vec4<f32> = u_xlat5;
    let x_261 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_263 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + -(x_261));
    let x_264 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
    let x_266 : vec4<f32> = u_xlat5;
    let x_270 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_271 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) * x_270);
    let x_272 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_272.x, x_271.x, x_271.y, x_271.z);
    let x_275 : f32 = u_xlat5.y;
    u_xlat21 = ((x_275 * 0.25f) + 0.75f);
    let x_283 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_283 * 0.5f) + 0.75f);
    let x_287 : f32 = u_xlat21;
    let x_288 : f32 = u_xlat22;
    u_xlat5.x = max(x_287, x_288);
    let x_299 : vec4<f32> = u_xlat5;
    let x_301 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_299.x, x_299.z, x_299.w));
    u_xlat5 = x_301;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_307 : vec4<f32> = u_xlat5;
  let x_309 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_307, x_309);
  let x_311 : f32 = u_xlat21;
  u_xlat21 = clamp(x_311, 0.0f, 1.0f);
  let x_319 : vec3<f32> = u_xlat4;
  let x_321 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_319.x, x_319.y));
  u_xlat22 = x_321.w;
  let x_323 : f32 = u_xlat21;
  let x_324 : f32 = u_xlat22;
  u_xlat21 = (x_323 * x_324);
  let x_326 : f32 = u_xlat21;
  let x_330 : vec4<f32> = x_32.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_335 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_335) + 1.0f);
  let x_341 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_341;
  let x_345 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_345;
  let x_348 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_348;
  let x_351 : vec4<f32> = vs_TEXCOORD1;
  let x_354 : f32 = u_xlat23;
  let x_357 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_351.x, x_351.y, x_351.z)) * vec3<f32>(x_354, x_354, x_354)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec3<f32> = u_xlat6;
  let x_361 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_360, x_361);
  let x_363 : f32 = u_xlat22;
  u_xlat22 = max(x_363, 0.001f);
  let x_366 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_366);
  let x_368 : f32 = u_xlat22;
  let x_370 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_368, x_368, x_368) * x_370);
  let x_372 : vec4<f32> = u_xlat2;
  let x_374 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), -(x_374));
  let x_377 : vec4<f32> = u_xlat2;
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_377.x, x_377.y, x_377.z), vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : f32 = u_xlat23;
  u_xlat23 = clamp(x_382, 0.0f, 1.0f);
  let x_384 : vec4<f32> = u_xlat2;
  let x_386 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), x_386);
  let x_390 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_390, 0.0f, 1.0f);
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(vec3<f32>(x_394.x, x_394.y, x_394.z), x_396);
  let x_398 : f32 = u_xlat9;
  u_xlat9 = clamp(x_398, 0.0f, 1.0f);
  let x_401 : f32 = u_xlat9;
  let x_402 : f32 = u_xlat9;
  u_xlat16 = (x_401 * x_402);
  let x_404 : f32 = u_xlat16;
  let x_406 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_404, x_404), vec2<f32>(x_406, x_406));
  let x_409 : f32 = u_xlat16;
  u_xlat16 = (x_409 + -0.5f);
  let x_412 : f32 = u_xlat23;
  u_xlat3.x = (-(x_412) + 1.0f);
  let x_418 : f32 = u_xlat3.x;
  let x_420 : f32 = u_xlat3.x;
  u_xlat10 = (x_418 * x_420);
  let x_422 : f32 = u_xlat10;
  let x_423 : f32 = u_xlat10;
  u_xlat10 = (x_422 * x_423);
  let x_426 : f32 = u_xlat3.x;
  let x_427 : f32 = u_xlat10;
  u_xlat3.x = (x_426 * x_427);
  let x_430 : f32 = u_xlat16;
  let x_432 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_430 * x_432) + 1.0f);
  let x_436 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_436)) + 1.0f);
  let x_441 : f32 = u_xlat10;
  let x_442 : f32 = u_xlat10;
  u_xlat17 = (x_441 * x_442);
  let x_444 : f32 = u_xlat17;
  let x_445 : f32 = u_xlat17;
  u_xlat17 = (x_444 * x_445);
  let x_447 : f32 = u_xlat10;
  let x_448 : f32 = u_xlat17;
  u_xlat10 = (x_447 * x_448);
  let x_450 : f32 = u_xlat16;
  let x_451 : f32 = u_xlat10;
  u_xlat16 = ((x_450 * x_451) + 1.0f);
  let x_454 : f32 = u_xlat16;
  let x_456 : f32 = u_xlat3.x;
  u_xlat16 = (x_454 * x_456);
  let x_458 : f32 = u_xlat23;
  let x_459 : f32 = u_xlat16;
  u_xlat16 = (x_458 * x_459);
  let x_461 : f32 = u_xlat21;
  let x_462 : f32 = u_xlat21;
  u_xlat21 = (x_461 * x_462);
  let x_464 : f32 = u_xlat21;
  u_xlat21 = max(x_464, 0.002f);
  let x_467 : f32 = u_xlat21;
  u_xlat3.x = (-(x_467) + 1.0f);
  let x_471 : f32 = u_xlat22;
  let x_474 : f32 = u_xlat3.x;
  let x_476 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_471) * x_474) + x_476);
  let x_478 : f32 = u_xlat23;
  let x_480 : f32 = u_xlat3.x;
  let x_482 : f32 = u_xlat21;
  u_xlat3.x = ((x_478 * x_480) + x_482);
  let x_485 : f32 = u_xlat22;
  let x_488 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_485) * x_488);
  let x_490 : f32 = u_xlat23;
  let x_491 : f32 = u_xlat10;
  let x_493 : f32 = u_xlat22;
  u_xlat22 = ((x_490 * x_491) + x_493);
  let x_495 : f32 = u_xlat22;
  u_xlat22 = (x_495 + 0.00001f);
  let x_498 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_498);
  let x_500 : f32 = u_xlat21;
  let x_501 : f32 = u_xlat21;
  u_xlat21 = (x_500 * x_501);
  let x_504 : f32 = u_xlat2.x;
  let x_505 : f32 = u_xlat21;
  let x_508 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_504 * x_505) + -(x_508));
  let x_513 : f32 = u_xlat3.x;
  let x_515 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_513 * x_515) + 1.0f);
  let x_519 : f32 = u_xlat21;
  u_xlat21 = (x_519 * 0.318309873f);
  let x_523 : f32 = u_xlat2.x;
  let x_525 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_523 * x_525) + 0.0000001f);
  let x_530 : f32 = u_xlat21;
  let x_532 : f32 = u_xlat2.x;
  u_xlat21 = (x_530 / x_532);
  let x_534 : f32 = u_xlat21;
  let x_535 : f32 = u_xlat22;
  u_xlat21 = (x_534 * x_535);
  let x_537 : f32 = u_xlat23;
  let x_538 : f32 = u_xlat21;
  u_xlat21 = (x_537 * x_538);
  let x_540 : f32 = u_xlat21;
  u_xlat21 = (x_540 * 3.141592741f);
  let x_543 : f32 = u_xlat21;
  u_xlat21 = max(x_543, 0.0f);
  let x_545 : vec4<f32> = u_xlat0;
  let x_547 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_545.x, x_545.y, x_545.z), vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_551 : f32 = u_xlat22;
  u_xlatb22 = !((x_551 == 0.0f));
  let x_553 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_553);
  let x_555 : f32 = u_xlat21;
  let x_556 : f32 = u_xlat22;
  u_xlat21 = (x_555 * x_556);
  let x_558 : f32 = u_xlat16;
  let x_560 : vec3<f32> = u_xlat4;
  let x_561 : vec3<f32> = (vec3<f32>(x_558, x_558, x_558) * x_560);
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_562.y, x_561.y, x_561.z);
  let x_564 : vec3<f32> = u_xlat4;
  let x_565 : f32 = u_xlat21;
  u_xlat3 = (x_564 * vec3<f32>(x_565, x_565, x_565));
  let x_568 : f32 = u_xlat9;
  u_xlat21 = (-(x_568) + 1.0f);
  let x_571 : f32 = u_xlat21;
  let x_572 : f32 = u_xlat21;
  u_xlat22 = (x_571 * x_572);
  let x_574 : f32 = u_xlat22;
  let x_575 : f32 = u_xlat22;
  u_xlat22 = (x_574 * x_575);
  let x_577 : f32 = u_xlat21;
  let x_578 : f32 = u_xlat22;
  u_xlat21 = (x_577 * x_578);
  let x_580 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_580.x, x_580.y, x_580.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_585 : vec3<f32> = u_xlat4;
  let x_586 : f32 = u_xlat21;
  let x_589 : vec4<f32> = u_xlat0;
  let x_591 : vec3<f32> = ((x_585 * vec3<f32>(x_586, x_586, x_586)) + vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat0;
  let x_596 : vec3<f32> = u_xlat3;
  let x_597 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) * x_596);
  let x_598 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec4<f32> = u_xlat1;
  let x_602 : vec4<f32> = u_xlat2;
  let x_605 : vec4<f32> = u_xlat0;
  let x_607 : vec3<f32> = ((vec3<f32>(x_600.x, x_600.y, x_600.z) * vec3<f32>(x_602.x, x_602.z, x_602.w)) + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_611 : f32 = vs_TEXCOORD1.w;
  let x_613 : f32 = x_32.x_ProjectionParams.y;
  u_xlat21 = (x_611 / x_613);
  let x_615 : f32 = u_xlat21;
  u_xlat21 = (-(x_615) + 1.0f);
  let x_618 : f32 = u_xlat21;
  let x_620 : f32 = x_32.x_ProjectionParams.z;
  u_xlat21 = (x_618 * x_620);
  let x_622 : f32 = u_xlat21;
  u_xlat21 = max(x_622, 0.0f);
  let x_624 : f32 = u_xlat21;
  let x_626 : f32 = x_32.unity_FogParams.x;
  u_xlat21 = (x_624 * x_626);
  let x_628 : f32 = u_xlat21;
  let x_629 : f32 = u_xlat21;
  u_xlat21 = (x_628 * -(x_629));
  let x_632 : f32 = u_xlat21;
  u_xlat21 = exp2(x_632);
  let x_634 : vec4<f32> = u_xlat0;
  let x_636 : f32 = u_xlat21;
  let x_638 : vec3<f32> = (vec3<f32>(x_634.x, x_634.y, x_634.z) * vec3<f32>(x_636, x_636, x_636));
  let x_639 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
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

