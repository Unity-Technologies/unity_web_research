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
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat4 : vec4<f32>;
  var x_249 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
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
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_86 : vec4<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_95 : f32 = u_xlat2.z;
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = (x_95 * x_98);
  let x_101 : vec4<f32> = u_xlat2;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_33.x_BumpScale;
  let x_117 : vec2<f32> = (vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115, x_115));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_120.x, x_120.y), vec2<f32>(x_122.x, x_122.y));
  let x_125 : f32 = u_xlat21;
  u_xlat21 = min(x_125, 1.0f);
  let x_128 : f32 = u_xlat21;
  u_xlat21 = (-(x_128) + 1.0f);
  let x_131 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_131);
  let x_134 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = vs_TEXCOORD2;
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat9;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat21;
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat21;
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_181);
  let x_184 : f32 = u_xlat21;
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_194 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_194 == 1.0f);
  let x_196 : bool = u_xlatb22;
  if (x_196) {
    let x_201 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_201 == 1.0f);
    let x_206 : vec3<f32> = vs_TEXCOORD5;
    let x_211 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_213 : vec3<f32> = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_211.x, x_211.y, x_211.z));
    let x_214 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_218 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_220 : vec3<f32> = vs_TEXCOORD5;
    let x_223 : vec4<f32> = u_xlat4;
    let x_225 : vec3<f32> = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.x, x_220.x, x_220.x)) + vec3<f32>(x_223.x, x_223.y, x_223.z));
    let x_226 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_230 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_232 : vec3<f32> = vs_TEXCOORD5;
    let x_235 : vec4<f32> = u_xlat4;
    let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.z, x_232.z, x_232.z)) + vec3<f32>(x_235.x, x_235.y, x_235.z));
    let x_238 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : vec4<f32> = u_xlat4;
    let x_243 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_245 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_246 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_248 : bool = u_xlatb22;
    if (x_248) {
      let x_252 : vec4<f32> = u_xlat4;
      x_249 = vec3<f32>(x_252.x, x_252.y, x_252.z);
    } else {
      let x_255 : vec3<f32> = vs_TEXCOORD5;
      x_249 = x_255;
    }
    let x_256 : vec3<f32> = x_249;
    let x_257 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_259 : vec4<f32> = u_xlat4;
    let x_264 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_266 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + -(x_264));
    let x_267 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat4;
    let x_273 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) * x_273);
    let x_275 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_275.x, x_274.x, x_274.y, x_274.z);
    let x_279 : f32 = u_xlat4.y;
    u_xlat22 = ((x_279 * 0.25f) + 0.75f);
    let x_286 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_286 * 0.5f) + 0.75f);
    let x_290 : f32 = u_xlat22;
    let x_291 : f32 = u_xlat23;
    u_xlat4.x = max(x_290, x_291);
    let x_302 : vec4<f32> = u_xlat4;
    let x_304 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_302.x, x_302.z, x_302.w));
    u_xlat4 = x_304;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_311, x_313);
  let x_315 : f32 = u_xlat22;
  u_xlat22 = clamp(x_315, 0.0f, 1.0f);
  let x_318 : f32 = u_xlat22;
  let x_322 : vec4<f32> = x_33.x_LightColor0;
  let x_324 : vec3<f32> = (vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_329 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_329) + 1.0f);
  let x_335 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_335;
  let x_338 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_338;
  let x_341 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_341;
  let x_344 : vec4<f32> = vs_TEXCOORD1;
  let x_347 : f32 = u_xlat21;
  let x_350 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_344.x, x_344.y, x_344.z)) * vec3<f32>(x_347, x_347, x_347)) + x_350);
  let x_352 : vec3<f32> = u_xlat6;
  let x_353 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_352, x_353);
  let x_355 : f32 = u_xlat21;
  u_xlat21 = max(x_355, 0.001f);
  let x_358 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_358);
  let x_360 : f32 = u_xlat21;
  let x_362 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_360, x_360, x_360) * x_362);
  let x_364 : vec4<f32> = u_xlat2;
  let x_366 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_364.x, x_364.y, x_364.z), -(x_366));
  let x_369 : vec4<f32> = u_xlat2;
  let x_371 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_369.x, x_369.y, x_369.z), x_371);
  let x_373 : f32 = u_xlat23;
  u_xlat23 = clamp(x_373, 0.0f, 1.0f);
  let x_375 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), x_377);
  let x_381 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_381, 0.0f, 1.0f);
  let x_384 : vec3<f32> = u_xlat5;
  let x_385 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(x_384, x_385);
  let x_389 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_389, 0.0f, 1.0f);
  let x_394 : f32 = u_xlat9.x;
  let x_396 : f32 = u_xlat9.x;
  u_xlat16 = (x_394 * x_396);
  let x_398 : f32 = u_xlat16;
  let x_400 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_398, x_398), vec2<f32>(x_400, x_400));
  let x_403 : f32 = u_xlat16;
  u_xlat16 = (x_403 + -0.5f);
  let x_406 : f32 = u_xlat23;
  u_xlat3.x = (-(x_406) + 1.0f);
  let x_412 : f32 = u_xlat3.x;
  let x_414 : f32 = u_xlat3.x;
  u_xlat10 = (x_412 * x_414);
  let x_416 : f32 = u_xlat10;
  let x_417 : f32 = u_xlat10;
  u_xlat10 = (x_416 * x_417);
  let x_420 : f32 = u_xlat3.x;
  let x_421 : f32 = u_xlat10;
  u_xlat3.x = (x_420 * x_421);
  let x_424 : f32 = u_xlat16;
  let x_426 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_424 * x_426) + 1.0f);
  let x_430 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_430)) + 1.0f);
  let x_435 : f32 = u_xlat10;
  let x_436 : f32 = u_xlat10;
  u_xlat17 = (x_435 * x_436);
  let x_438 : f32 = u_xlat17;
  let x_439 : f32 = u_xlat17;
  u_xlat17 = (x_438 * x_439);
  let x_441 : f32 = u_xlat10;
  let x_442 : f32 = u_xlat17;
  u_xlat10 = (x_441 * x_442);
  let x_444 : f32 = u_xlat16;
  let x_445 : f32 = u_xlat10;
  u_xlat16 = ((x_444 * x_445) + 1.0f);
  let x_448 : f32 = u_xlat16;
  let x_450 : f32 = u_xlat3.x;
  u_xlat16 = (x_448 * x_450);
  let x_452 : f32 = u_xlat23;
  let x_453 : f32 = u_xlat16;
  u_xlat16 = (x_452 * x_453);
  let x_455 : f32 = u_xlat22;
  let x_456 : f32 = u_xlat22;
  u_xlat22 = (x_455 * x_456);
  let x_458 : f32 = u_xlat22;
  u_xlat22 = max(x_458, 0.002f);
  let x_461 : f32 = u_xlat22;
  u_xlat3.x = (-(x_461) + 1.0f);
  let x_465 : f32 = u_xlat21;
  let x_468 : f32 = u_xlat3.x;
  let x_470 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_465) * x_468) + x_470);
  let x_472 : f32 = u_xlat23;
  let x_474 : f32 = u_xlat3.x;
  let x_476 : f32 = u_xlat22;
  u_xlat3.x = ((x_472 * x_474) + x_476);
  let x_479 : f32 = u_xlat21;
  let x_482 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_479) * x_482);
  let x_484 : f32 = u_xlat23;
  let x_485 : f32 = u_xlat10;
  let x_487 : f32 = u_xlat21;
  u_xlat21 = ((x_484 * x_485) + x_487);
  let x_489 : f32 = u_xlat21;
  u_xlat21 = (x_489 + 0.00001f);
  let x_492 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_492);
  let x_494 : f32 = u_xlat22;
  let x_495 : f32 = u_xlat22;
  u_xlat22 = (x_494 * x_495);
  let x_498 : f32 = u_xlat2.x;
  let x_499 : f32 = u_xlat22;
  let x_502 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_498 * x_499) + -(x_502));
  let x_507 : f32 = u_xlat3.x;
  let x_509 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_507 * x_509) + 1.0f);
  let x_513 : f32 = u_xlat22;
  u_xlat22 = (x_513 * 0.318309873f);
  let x_517 : f32 = u_xlat2.x;
  let x_519 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_517 * x_519) + 0.0000001f);
  let x_524 : f32 = u_xlat22;
  let x_526 : f32 = u_xlat2.x;
  u_xlat22 = (x_524 / x_526);
  let x_528 : f32 = u_xlat21;
  let x_529 : f32 = u_xlat22;
  u_xlat21 = (x_528 * x_529);
  let x_531 : f32 = u_xlat23;
  let x_532 : f32 = u_xlat21;
  u_xlat21 = (x_531 * x_532);
  let x_534 : f32 = u_xlat21;
  u_xlat21 = (x_534 * 3.141592741f);
  let x_537 : f32 = u_xlat21;
  u_xlat21 = max(x_537, 0.0f);
  let x_539 : vec3<f32> = u_xlat0;
  let x_540 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_539, x_540);
  let x_542 : f32 = u_xlat22;
  u_xlatb22 = !((x_542 == 0.0f));
  let x_544 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_544);
  let x_546 : f32 = u_xlat21;
  let x_547 : f32 = u_xlat22;
  u_xlat21 = (x_546 * x_547);
  let x_549 : f32 = u_xlat16;
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : vec3<f32> = (vec3<f32>(x_549, x_549, x_549) * vec3<f32>(x_551.x, x_551.y, x_551.z));
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_553.x, x_554.y, x_553.y, x_553.z);
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_556.x, x_556.y, x_556.z) * vec3<f32>(x_558, x_558, x_558));
  let x_562 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_562) + 1.0f);
  let x_565 : f32 = u_xlat21;
  let x_566 : f32 = u_xlat21;
  u_xlat22 = (x_565 * x_566);
  let x_568 : f32 = u_xlat22;
  let x_569 : f32 = u_xlat22;
  u_xlat22 = (x_568 * x_569);
  let x_571 : f32 = u_xlat21;
  let x_572 : f32 = u_xlat22;
  u_xlat21 = (x_571 * x_572);
  let x_574 : vec3<f32> = u_xlat0;
  let x_577 : vec3<f32> = (-(x_574) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_578 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat4;
  let x_582 : f32 = u_xlat21;
  let x_585 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(x_582, x_582, x_582)) + x_585);
  let x_587 : vec3<f32> = u_xlat0;
  let x_588 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_587 * x_588);
  let x_590 : vec3<f32> = u_xlat1;
  let x_591 : vec4<f32> = u_xlat2;
  let x_594 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_590 * vec3<f32>(x_591.x, x_591.z, x_591.w)) + x_594);
  let x_597 : f32 = vs_TEXCOORD1.w;
  let x_599 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_597 / x_599);
  let x_601 : f32 = u_xlat21;
  u_xlat21 = (-(x_601) + 1.0f);
  let x_604 : f32 = u_xlat21;
  let x_606 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_604 * x_606);
  let x_608 : f32 = u_xlat21;
  u_xlat21 = max(x_608, 0.0f);
  let x_610 : f32 = u_xlat21;
  let x_612 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_610 * x_612);
  let x_614 : f32 = u_xlat21;
  let x_615 : f32 = u_xlat21;
  u_xlat21 = (x_614 * -(x_615));
  let x_618 : f32 = u_xlat21;
  u_xlat21 = exp2(x_618);
  let x_622 : vec3<f32> = u_xlat0;
  let x_623 : f32 = u_xlat21;
  let x_625 : vec3<f32> = (x_622 * vec3<f32>(x_623, x_623, x_623));
  let x_626 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

