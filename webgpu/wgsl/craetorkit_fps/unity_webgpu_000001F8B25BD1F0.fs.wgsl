struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(10) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb25 : bool;
  var u_xlat7 : vec4<f32>;
  var x_209 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlat20 : vec2<f32>;
  var u_xlat27 : f32;
  var u_xlat10 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat9 : f32;
  var u_xlatb24 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat24;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat25;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_80 : vec2<f32> = vs_TEXCOORD0;
  let x_81 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_80);
  u_xlat4 = vec2<f32>(x_81.x, x_81.w);
  let x_89 : vec2<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_89);
  u_xlat5 = vec3<f32>(x_90.x, x_90.y, x_90.w);
  let x_95 : f32 = u_xlat5.z;
  let x_98 : f32 = u_xlat5.x;
  u_xlat5.x = (x_95 * x_98);
  let x_101 : vec3<f32> = u_xlat5;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_108.x, x_108.y, x_109.z);
  let x_111 : vec3<f32> = u_xlat5;
  let x_113 : vec3<f32> = u_xlat5;
  u_xlat25 = dot(vec2<f32>(x_111.x, x_111.y), vec2<f32>(x_113.x, x_113.y));
  let x_116 : f32 = u_xlat25;
  u_xlat25 = min(x_116, 1.0f);
  let x_119 : f32 = u_xlat25;
  u_xlat25 = (-(x_119) + 1.0f);
  let x_122 : f32 = u_xlat25;
  u_xlat5.z = sqrt(x_122);
  let x_127 : vec3<f32> = vs_TEXCOORD4;
  let x_132 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat6 = (vec4<f32>(x_127.y, x_127.y, x_127.y, x_127.y) * x_132);
  let x_135 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_136 : vec3<f32> = vs_TEXCOORD4;
  let x_139 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_135 * vec4<f32>(x_136.x, x_136.x, x_136.x, x_136.x)) + x_139);
  let x_142 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_143 : vec3<f32> = vs_TEXCOORD4;
  let x_146 : vec4<f32> = u_xlat6;
  u_xlat6 = ((x_142 * vec4<f32>(x_143.z, x_143.z, x_143.z, x_143.z)) + x_146);
  let x_148 : vec4<f32> = u_xlat6;
  let x_151 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_148 + x_151);
  let x_159 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_159 == 1.0f);
  let x_161 : bool = u_xlatb25;
  if (x_161) {
    let x_166 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_166 == 1.0f);
    let x_169 : vec3<f32> = vs_TEXCOORD4;
    let x_173 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_175 : vec3<f32> = (vec3<f32>(x_169.y, x_169.y, x_169.y) * vec3<f32>(x_173.x, x_173.y, x_173.z));
    let x_176 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
    let x_179 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_181 : vec3<f32> = vs_TEXCOORD4;
    let x_184 : vec4<f32> = u_xlat7;
    let x_186 : vec3<f32> = ((vec3<f32>(x_179.x, x_179.y, x_179.z) * vec3<f32>(x_181.x, x_181.x, x_181.x)) + vec3<f32>(x_184.x, x_184.y, x_184.z));
    let x_187 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
    let x_190 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_192 : vec3<f32> = vs_TEXCOORD4;
    let x_195 : vec4<f32> = u_xlat7;
    let x_197 : vec3<f32> = ((vec3<f32>(x_190.x, x_190.y, x_190.z) * vec3<f32>(x_192.z, x_192.z, x_192.z)) + vec3<f32>(x_195.x, x_195.y, x_195.z));
    let x_198 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
    let x_200 : vec4<f32> = u_xlat7;
    let x_203 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_205 : vec3<f32> = (vec3<f32>(x_200.x, x_200.y, x_200.z) + vec3<f32>(x_203.x, x_203.y, x_203.z));
    let x_206 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : bool = u_xlatb25;
    if (x_208) {
      let x_212 : vec4<f32> = u_xlat7;
      x_209 = vec3<f32>(x_212.x, x_212.y, x_212.z);
    } else {
      let x_215 : vec3<f32> = vs_TEXCOORD4;
      x_209 = x_215;
    }
    let x_216 : vec3<f32> = x_209;
    let x_217 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
    let x_219 : vec4<f32> = u_xlat7;
    let x_223 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_225 : vec3<f32> = (vec3<f32>(x_219.x, x_219.y, x_219.z) + -(x_223));
    let x_226 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : vec4<f32> = u_xlat7;
    let x_232 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_233 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) * x_232);
    let x_234 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_234.x, x_233.x, x_233.y, x_233.z);
    let x_237 : f32 = u_xlat7.y;
    u_xlat25 = ((x_237 * 0.25f) + 0.75f);
    let x_244 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_244 * 0.5f) + 0.75f);
    let x_248 : f32 = u_xlat25;
    let x_249 : f32 = u_xlat26;
    u_xlat7.x = max(x_248, x_249);
    let x_260 : vec4<f32> = u_xlat7;
    let x_262 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_260.x, x_260.z, x_260.w));
    u_xlat7 = x_262;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_269 : vec4<f32> = u_xlat7;
  let x_271 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_269, x_271);
  let x_273 : f32 = u_xlat25;
  u_xlat25 = clamp(x_273, 0.0f, 1.0f);
  let x_278 : f32 = u_xlat6.z;
  u_xlatb26 = (0.0f < x_278);
  let x_280 : bool = u_xlatb26;
  u_xlat26 = select(0.0f, 1.0f, x_280);
  let x_283 : vec4<f32> = u_xlat6;
  let x_285 : vec4<f32> = u_xlat6;
  u_xlat20 = (vec2<f32>(x_283.x, x_283.y) / vec2<f32>(x_285.w, x_285.w));
  let x_288 : vec2<f32> = u_xlat20;
  u_xlat20 = (x_288 + vec2<f32>(0.5f, 0.5f));
  let x_297 : vec2<f32> = u_xlat20;
  let x_298 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_297);
  u_xlat27 = x_298.w;
  let x_300 : f32 = u_xlat26;
  let x_301 : f32 = u_xlat27;
  u_xlat26 = (x_300 * x_301);
  let x_303 : vec4<f32> = u_xlat6;
  let x_305 : vec4<f32> = u_xlat6;
  u_xlat27 = dot(vec3<f32>(x_303.x, x_303.y, x_303.z), vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_313 : f32 = u_xlat27;
  let x_315 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_313, x_313));
  u_xlat27 = x_315.x;
  let x_317 : f32 = u_xlat26;
  let x_318 : f32 = u_xlat27;
  u_xlat26 = (x_317 * x_318);
  let x_320 : f32 = u_xlat25;
  let x_321 : f32 = u_xlat26;
  u_xlat25 = (x_320 * x_321);
  let x_324 : vec3<f32> = vs_TEXCOORD1;
  let x_325 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_324, x_325);
  let x_329 : vec3<f32> = vs_TEXCOORD2;
  let x_330 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_329, x_330);
  let x_334 : vec3<f32> = vs_TEXCOORD3;
  let x_335 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_334, x_335);
  let x_338 : vec4<f32> = u_xlat6;
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat26 = dot(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_343);
  let x_345 : f32 = u_xlat26;
  let x_347 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_345, x_345, x_345) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : f32 = u_xlat25;
  let x_354 : vec4<f32> = x_18.x_LightColor0;
  let x_356 : vec3<f32> = (vec3<f32>(x_350, x_350, x_350) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec3<f32> = u_xlat3;
  let x_362 : vec3<f32> = (x_359 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_363 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : vec2<f32> = u_xlat4;
  let x_367 : vec4<f32> = u_xlat7;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.x, x_365.x) * vec3<f32>(x_367.x, x_367.y, x_367.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_373 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : f32 = u_xlat4.x;
  u_xlat25 = ((-(x_376) * 0.959999979f) + 0.959999979f);
  let x_381 : f32 = u_xlat25;
  let x_383 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_381, x_381, x_381) * x_383);
  let x_386 : f32 = u_xlat4.y;
  u_xlat25 = (-(x_386) + 1.0f);
  let x_389 : vec3<f32> = u_xlat0;
  let x_390 : f32 = u_xlat24;
  let x_393 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_389 * vec3<f32>(x_390, x_390, x_390)) + x_393);
  let x_395 : vec3<f32> = u_xlat0;
  let x_396 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_395, x_396);
  let x_398 : f32 = u_xlat24;
  u_xlat24 = max(x_398, 0.001f);
  let x_401 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_401);
  let x_403 : f32 = u_xlat24;
  let x_405 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_403, x_403, x_403) * x_405);
  let x_407 : vec3<f32> = u_xlat5;
  let x_408 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_407, x_408);
  let x_410 : vec3<f32> = u_xlat5;
  let x_411 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_410, x_411);
  let x_415 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_415, 0.0f, 1.0f);
  let x_419 : vec3<f32> = u_xlat5;
  let x_420 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_419, x_420);
  let x_422 : f32 = u_xlat10;
  u_xlat10 = clamp(x_422, 0.0f, 1.0f);
  let x_424 : vec3<f32> = u_xlat1;
  let x_425 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_424, x_425);
  let x_429 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_429, 0.0f, 1.0f);
  let x_434 : f32 = u_xlat0.x;
  let x_436 : f32 = u_xlat0.x;
  u_xlat8.x = (x_434 * x_436);
  let x_439 : vec3<f32> = u_xlat8;
  let x_441 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_439.x, x_439.x), vec2<f32>(x_441, x_441));
  let x_446 : f32 = u_xlat8.x;
  u_xlat8.x = (x_446 + -0.5f);
  let x_452 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_452) + 1.0f);
  let x_455 : f32 = u_xlat16;
  let x_456 : f32 = u_xlat16;
  u_xlat1.x = (x_455 * x_456);
  let x_460 : f32 = u_xlat1.x;
  let x_462 : f32 = u_xlat1.x;
  u_xlat1.x = (x_460 * x_462);
  let x_465 : f32 = u_xlat16;
  let x_467 : f32 = u_xlat1.x;
  u_xlat16 = (x_465 * x_467);
  let x_470 : f32 = u_xlat8.x;
  let x_471 : f32 = u_xlat16;
  u_xlat16 = ((x_470 * x_471) + 1.0f);
  let x_474 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_474)) + 1.0f);
  let x_481 : f32 = u_xlat1.x;
  let x_483 : f32 = u_xlat1.x;
  u_xlat9 = (x_481 * x_483);
  let x_485 : f32 = u_xlat9;
  let x_486 : f32 = u_xlat9;
  u_xlat9 = (x_485 * x_486);
  let x_489 : f32 = u_xlat1.x;
  let x_490 : f32 = u_xlat9;
  u_xlat1.x = (x_489 * x_490);
  let x_494 : f32 = u_xlat8.x;
  let x_496 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_494 * x_496) + 1.0f);
  let x_501 : f32 = u_xlat8.x;
  let x_502 : f32 = u_xlat16;
  u_xlat8.x = (x_501 * x_502);
  let x_505 : f32 = u_xlat25;
  let x_506 : f32 = u_xlat25;
  u_xlat16 = (x_505 * x_506);
  let x_508 : f32 = u_xlat16;
  u_xlat16 = max(x_508, 0.002f);
  let x_511 : f32 = u_xlat16;
  u_xlat1.x = (-(x_511) + 1.0f);
  let x_515 : f32 = u_xlat24;
  let x_518 : f32 = u_xlat1.x;
  let x_520 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_515) * x_518) + x_520);
  let x_523 : f32 = u_xlat2.x;
  let x_525 : f32 = u_xlat1.x;
  let x_527 : f32 = u_xlat16;
  u_xlat1.x = ((x_523 * x_525) + x_527);
  let x_530 : f32 = u_xlat24;
  let x_533 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_530) * x_533);
  let x_536 : f32 = u_xlat2.x;
  let x_537 : f32 = u_xlat9;
  let x_539 : f32 = u_xlat24;
  u_xlat24 = ((x_536 * x_537) + x_539);
  let x_541 : f32 = u_xlat24;
  u_xlat24 = (x_541 + 0.00001f);
  let x_544 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_544);
  let x_546 : f32 = u_xlat16;
  let x_547 : f32 = u_xlat16;
  u_xlat16 = (x_546 * x_547);
  let x_549 : f32 = u_xlat10;
  let x_550 : f32 = u_xlat16;
  let x_552 : f32 = u_xlat10;
  u_xlat1.x = ((x_549 * x_550) + -(x_552));
  let x_557 : f32 = u_xlat1.x;
  let x_558 : f32 = u_xlat10;
  u_xlat1.x = ((x_557 * x_558) + 1.0f);
  let x_562 : f32 = u_xlat16;
  u_xlat16 = (x_562 * 0.318309873f);
  let x_566 : f32 = u_xlat1.x;
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_566 * x_568) + 0.0000001f);
  let x_573 : f32 = u_xlat16;
  let x_575 : f32 = u_xlat1.x;
  u_xlat16 = (x_573 / x_575);
  let x_577 : f32 = u_xlat16;
  let x_578 : f32 = u_xlat24;
  u_xlat8.y = (x_577 * x_578);
  let x_581 : vec3<f32> = u_xlat2;
  let x_583 : vec3<f32> = u_xlat8;
  let x_585 : vec2<f32> = (vec2<f32>(x_581.x, x_581.x) * vec2<f32>(x_583.x, x_583.y));
  let x_586 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_585.x, x_585.y, x_586.z);
  let x_589 : f32 = u_xlat8.y;
  u_xlat16 = (x_589 * 3.141592741f);
  let x_592 : f32 = u_xlat16;
  u_xlat16 = max(x_592, 0.0f);
  let x_594 : vec4<f32> = u_xlat7;
  let x_596 : vec4<f32> = u_xlat7;
  u_xlat24 = dot(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_600 : f32 = u_xlat24;
  u_xlatb24 = !((x_600 == 0.0f));
  let x_602 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_602);
  let x_604 : f32 = u_xlat24;
  let x_605 : f32 = u_xlat16;
  u_xlat16 = (x_604 * x_605);
  let x_607 : vec3<f32> = u_xlat8;
  let x_609 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_607.x, x_607.x, x_607.x) * vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat6;
  let x_614 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614, x_614, x_614));
  let x_618 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_618) + 1.0f);
  let x_623 : f32 = u_xlat0.x;
  let x_625 : f32 = u_xlat0.x;
  u_xlat25 = (x_623 * x_625);
  let x_627 : f32 = u_xlat25;
  let x_628 : f32 = u_xlat25;
  u_xlat25 = (x_627 * x_628);
  let x_631 : f32 = u_xlat0.x;
  let x_632 : f32 = u_xlat25;
  u_xlat0.x = (x_631 * x_632);
  let x_635 : vec4<f32> = u_xlat7;
  u_xlat2 = (-(vec3<f32>(x_635.x, x_635.y, x_635.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_640 : vec3<f32> = u_xlat2;
  let x_641 : vec3<f32> = u_xlat0;
  let x_644 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_640 * vec3<f32>(x_641.x, x_641.x, x_641.x)) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec3<f32> = u_xlat8;
  let x_648 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_647 * x_648);
  let x_650 : vec3<f32> = u_xlat3;
  let x_651 : vec3<f32> = u_xlat1;
  let x_653 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_650 * x_651) + x_653);
  let x_657 : f32 = vs_TEXCOORD7;
  let x_659 : f32 = x_18.x_ProjectionParams.y;
  u_xlat24 = (x_657 / x_659);
  let x_661 : f32 = u_xlat24;
  u_xlat24 = (-(x_661) + 1.0f);
  let x_664 : f32 = u_xlat24;
  let x_666 : f32 = x_18.x_ProjectionParams.z;
  u_xlat24 = (x_664 * x_666);
  let x_668 : f32 = u_xlat24;
  u_xlat24 = max(x_668, 0.0f);
  let x_670 : f32 = u_xlat24;
  let x_673 : f32 = x_18.unity_FogParams.x;
  u_xlat24 = (x_670 * x_673);
  let x_675 : f32 = u_xlat24;
  let x_676 : f32 = u_xlat24;
  u_xlat24 = (x_675 * -(x_676));
  let x_679 : f32 = u_xlat24;
  u_xlat24 = exp2(x_679);
  let x_683 : vec3<f32> = u_xlat0;
  let x_684 : f32 = u_xlat24;
  let x_686 : vec3<f32> = (x_683 * vec3<f32>(x_684, x_684, x_684));
  let x_687 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD7_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

