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

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

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
  var u_xlat4 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat5 : vec4<f32>;
  var x_234 : vec3<f32>;
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
  let x_130 : f32 = u_xlat21;
  u_xlat23 = (-(x_130) + 1.0f);
  let x_138 : f32 = u_xlat1.w;
  let x_139 : f32 = u_xlat21;
  let x_141 : f32 = u_xlat23;
  SV_Target0.w = ((x_138 * x_139) + x_141);
  let x_148 : vec3<f32> = vs_TEXCOORD5;
  let x_153 : vec4<f32> = x_32.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_148.y, x_148.y, x_148.y) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_158 : vec4<f32> = x_32.unity_WorldToLight[0i];
  let x_160 : vec3<f32> = vs_TEXCOORD5;
  let x_163 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + x_163);
  let x_167 : vec4<f32> = x_32.unity_WorldToLight[2i];
  let x_169 : vec3<f32> = vs_TEXCOORD5;
  let x_172 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169.z, x_169.z, x_169.z)) + x_172);
  let x_174 : vec3<f32> = u_xlat4;
  let x_177 : vec4<f32> = x_32.unity_WorldToLight[3i];
  u_xlat4 = (x_174 + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_184 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_184 == 1.0f);
  let x_186 : bool = u_xlatb21;
  if (x_186) {
    let x_191 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_191 == 1.0f);
    let x_194 : vec3<f32> = vs_TEXCOORD5;
    let x_198 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_200 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_198.x, x_198.y, x_198.z));
    let x_201 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_204 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_206 : vec3<f32> = vs_TEXCOORD5;
    let x_209 : vec4<f32> = u_xlat5;
    let x_211 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.x, x_206.x, x_206.x)) + vec3<f32>(x_209.x, x_209.y, x_209.z));
    let x_212 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
    let x_215 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_217 : vec3<f32> = vs_TEXCOORD5;
    let x_220 : vec4<f32> = u_xlat5;
    let x_222 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217.z, x_217.z, x_217.z)) + vec3<f32>(x_220.x, x_220.y, x_220.z));
    let x_223 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
    let x_225 : vec4<f32> = u_xlat5;
    let x_228 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_230 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.z) + vec3<f32>(x_228.x, x_228.y, x_228.z));
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_233 : bool = u_xlatb21;
    if (x_233) {
      let x_237 : vec4<f32> = u_xlat5;
      x_234 = vec3<f32>(x_237.x, x_237.y, x_237.z);
    } else {
      let x_240 : vec3<f32> = vs_TEXCOORD5;
      x_234 = x_240;
    }
    let x_241 : vec3<f32> = x_234;
    let x_242 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_244 : vec4<f32> = u_xlat5;
    let x_249 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_251 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) + -(x_249));
    let x_252 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : vec4<f32> = u_xlat5;
    let x_258 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_259 : vec3<f32> = (vec3<f32>(x_254.x, x_254.y, x_254.z) * x_258);
    let x_260 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_260.x, x_259.x, x_259.y, x_259.z);
    let x_263 : f32 = u_xlat5.y;
    u_xlat21 = ((x_263 * 0.25f) + 0.75f);
    let x_271 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_271 * 0.5f) + 0.75f);
    let x_275 : f32 = u_xlat21;
    let x_276 : f32 = u_xlat22;
    u_xlat5.x = max(x_275, x_276);
    let x_287 : vec4<f32> = u_xlat5;
    let x_289 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_287.x, x_287.z, x_287.w));
    u_xlat5 = x_289;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_295 : vec4<f32> = u_xlat5;
  let x_297 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_295, x_297);
  let x_299 : f32 = u_xlat21;
  u_xlat21 = clamp(x_299, 0.0f, 1.0f);
  let x_302 : vec3<f32> = u_xlat4;
  let x_303 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_302, x_303);
  let x_310 : f32 = u_xlat22;
  let x_312 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_310, x_310));
  u_xlat22 = x_312.x;
  let x_322 : vec3<f32> = u_xlat4;
  let x_323 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_322);
  u_xlat23 = x_323.w;
  let x_325 : f32 = u_xlat22;
  let x_326 : f32 = u_xlat23;
  u_xlat22 = (x_325 * x_326);
  let x_328 : f32 = u_xlat21;
  let x_329 : f32 = u_xlat22;
  u_xlat21 = (x_328 * x_329);
  let x_334 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_334;
  let x_338 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_338;
  let x_341 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_341;
  let x_343 : vec3<f32> = u_xlat4;
  let x_344 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_343, x_344);
  let x_346 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_346);
  let x_348 : f32 = u_xlat22;
  let x_350 : vec3<f32> = u_xlat4;
  let x_351 : vec3<f32> = (vec3<f32>(x_348, x_348, x_348) * x_350);
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_355 : f32 = u_xlat21;
  let x_359 : vec4<f32> = x_32.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_355, x_355, x_355) * vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_364 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_364) + 1.0f);
  let x_367 : vec3<f32> = u_xlat4;
  let x_368 : f32 = u_xlat22;
  let x_371 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_367 * vec3<f32>(x_368, x_368, x_368)) + -(x_371));
  let x_374 : vec3<f32> = u_xlat4;
  let x_375 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_374, x_375);
  let x_377 : f32 = u_xlat22;
  u_xlat22 = max(x_377, 0.001f);
  let x_380 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_380);
  let x_382 : f32 = u_xlat22;
  let x_384 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_382, x_382, x_382) * x_384);
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), -(x_388));
  let x_391 : vec4<f32> = u_xlat2;
  let x_393 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : f32 = u_xlat23;
  u_xlat23 = clamp(x_396, 0.0f, 1.0f);
  let x_398 : vec4<f32> = u_xlat2;
  let x_400 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_398.x, x_398.y, x_398.z), x_400);
  let x_404 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_404, 0.0f, 1.0f);
  let x_408 : vec4<f32> = u_xlat5;
  let x_410 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), x_410);
  let x_412 : f32 = u_xlat9;
  u_xlat9 = clamp(x_412, 0.0f, 1.0f);
  let x_415 : f32 = u_xlat9;
  let x_416 : f32 = u_xlat9;
  u_xlat16 = (x_415 * x_416);
  let x_418 : f32 = u_xlat16;
  let x_420 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_418, x_418), vec2<f32>(x_420, x_420));
  let x_423 : f32 = u_xlat16;
  u_xlat16 = (x_423 + -0.5f);
  let x_426 : f32 = u_xlat23;
  u_xlat3.x = (-(x_426) + 1.0f);
  let x_432 : f32 = u_xlat3.x;
  let x_434 : f32 = u_xlat3.x;
  u_xlat10 = (x_432 * x_434);
  let x_436 : f32 = u_xlat10;
  let x_437 : f32 = u_xlat10;
  u_xlat10 = (x_436 * x_437);
  let x_440 : f32 = u_xlat3.x;
  let x_441 : f32 = u_xlat10;
  u_xlat3.x = (x_440 * x_441);
  let x_444 : f32 = u_xlat16;
  let x_446 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_444 * x_446) + 1.0f);
  let x_450 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_450)) + 1.0f);
  let x_455 : f32 = u_xlat10;
  let x_456 : f32 = u_xlat10;
  u_xlat17 = (x_455 * x_456);
  let x_458 : f32 = u_xlat17;
  let x_459 : f32 = u_xlat17;
  u_xlat17 = (x_458 * x_459);
  let x_461 : f32 = u_xlat10;
  let x_462 : f32 = u_xlat17;
  u_xlat10 = (x_461 * x_462);
  let x_464 : f32 = u_xlat16;
  let x_465 : f32 = u_xlat10;
  u_xlat16 = ((x_464 * x_465) + 1.0f);
  let x_468 : f32 = u_xlat16;
  let x_470 : f32 = u_xlat3.x;
  u_xlat16 = (x_468 * x_470);
  let x_472 : f32 = u_xlat23;
  let x_473 : f32 = u_xlat16;
  u_xlat16 = (x_472 * x_473);
  let x_475 : f32 = u_xlat21;
  let x_476 : f32 = u_xlat21;
  u_xlat21 = (x_475 * x_476);
  let x_478 : f32 = u_xlat21;
  u_xlat21 = max(x_478, 0.002f);
  let x_481 : f32 = u_xlat21;
  u_xlat3.x = (-(x_481) + 1.0f);
  let x_485 : f32 = u_xlat22;
  let x_488 : f32 = u_xlat3.x;
  let x_490 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_485) * x_488) + x_490);
  let x_492 : f32 = u_xlat23;
  let x_494 : f32 = u_xlat3.x;
  let x_496 : f32 = u_xlat21;
  u_xlat3.x = ((x_492 * x_494) + x_496);
  let x_499 : f32 = u_xlat22;
  let x_502 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_499) * x_502);
  let x_504 : f32 = u_xlat23;
  let x_505 : f32 = u_xlat10;
  let x_507 : f32 = u_xlat22;
  u_xlat22 = ((x_504 * x_505) + x_507);
  let x_509 : f32 = u_xlat22;
  u_xlat22 = (x_509 + 0.00001f);
  let x_512 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_512);
  let x_514 : f32 = u_xlat21;
  let x_515 : f32 = u_xlat21;
  u_xlat21 = (x_514 * x_515);
  let x_518 : f32 = u_xlat2.x;
  let x_519 : f32 = u_xlat21;
  let x_522 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_518 * x_519) + -(x_522));
  let x_527 : f32 = u_xlat3.x;
  let x_529 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_527 * x_529) + 1.0f);
  let x_533 : f32 = u_xlat21;
  u_xlat21 = (x_533 * 0.318309873f);
  let x_537 : f32 = u_xlat2.x;
  let x_539 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_537 * x_539) + 0.0000001f);
  let x_544 : f32 = u_xlat21;
  let x_546 : f32 = u_xlat2.x;
  u_xlat21 = (x_544 / x_546);
  let x_548 : f32 = u_xlat21;
  let x_549 : f32 = u_xlat22;
  u_xlat21 = (x_548 * x_549);
  let x_551 : f32 = u_xlat23;
  let x_552 : f32 = u_xlat21;
  u_xlat21 = (x_551 * x_552);
  let x_554 : f32 = u_xlat21;
  u_xlat21 = (x_554 * 3.141592741f);
  let x_557 : f32 = u_xlat21;
  u_xlat21 = max(x_557, 0.0f);
  let x_559 : vec4<f32> = u_xlat0;
  let x_561 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_559.x, x_559.y, x_559.z), vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_565 : f32 = u_xlat22;
  u_xlatb22 = !((x_565 == 0.0f));
  let x_567 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_567);
  let x_569 : f32 = u_xlat21;
  let x_570 : f32 = u_xlat22;
  u_xlat21 = (x_569 * x_570);
  let x_572 : f32 = u_xlat16;
  let x_574 : vec3<f32> = u_xlat6;
  let x_575 : vec3<f32> = (vec3<f32>(x_572, x_572, x_572) * x_574);
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_576.y, x_575.y, x_575.z);
  let x_578 : vec3<f32> = u_xlat6;
  let x_579 : f32 = u_xlat21;
  u_xlat3 = (x_578 * vec3<f32>(x_579, x_579, x_579));
  let x_582 : f32 = u_xlat9;
  u_xlat21 = (-(x_582) + 1.0f);
  let x_585 : f32 = u_xlat21;
  let x_586 : f32 = u_xlat21;
  u_xlat22 = (x_585 * x_586);
  let x_588 : f32 = u_xlat22;
  let x_589 : f32 = u_xlat22;
  u_xlat22 = (x_588 * x_589);
  let x_591 : f32 = u_xlat21;
  let x_592 : f32 = u_xlat22;
  u_xlat21 = (x_591 * x_592);
  let x_594 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_594.x, x_594.y, x_594.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_599 : vec3<f32> = u_xlat4;
  let x_600 : f32 = u_xlat21;
  let x_603 : vec4<f32> = u_xlat0;
  let x_605 : vec3<f32> = ((x_599 * vec3<f32>(x_600, x_600, x_600)) + vec3<f32>(x_603.x, x_603.y, x_603.z));
  let x_606 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = u_xlat3;
  let x_611 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) * x_610);
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat1;
  let x_616 : vec4<f32> = u_xlat2;
  let x_619 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_616.x, x_616.z, x_616.w)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : f32 = vs_TEXCOORD1.w;
  let x_627 : f32 = x_32.x_ProjectionParams.y;
  u_xlat21 = (x_625 / x_627);
  let x_629 : f32 = u_xlat21;
  u_xlat21 = (-(x_629) + 1.0f);
  let x_632 : f32 = u_xlat21;
  let x_634 : f32 = x_32.x_ProjectionParams.z;
  u_xlat21 = (x_632 * x_634);
  let x_636 : f32 = u_xlat21;
  u_xlat21 = max(x_636, 0.0f);
  let x_638 : f32 = u_xlat21;
  let x_640 : f32 = x_32.unity_FogParams.x;
  u_xlat21 = (x_638 * x_640);
  let x_642 : f32 = u_xlat21;
  let x_643 : f32 = u_xlat21;
  u_xlat21 = (x_642 * -(x_643));
  let x_646 : f32 = u_xlat21;
  u_xlat21 = exp2(x_646);
  let x_648 : vec4<f32> = u_xlat0;
  let x_650 : f32 = u_xlat21;
  let x_652 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(x_650, x_650, x_650));
  let x_653 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
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

