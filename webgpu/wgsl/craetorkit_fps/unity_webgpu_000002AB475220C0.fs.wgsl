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

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(8) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

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
  var u_xlat6 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat7 : vec4<f32>;
  var x_213 : vec3<f32>;
  var u_xlat26 : f32;
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
  let x_126 : vec3<f32> = vs_TEXCOORD4;
  let x_131 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_126.y, x_126.y, x_126.y) * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_135 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_137 : vec3<f32> = vs_TEXCOORD4;
  let x_140 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_137.x, x_137.x, x_137.x)) + x_140);
  let x_143 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_145 : vec3<f32> = vs_TEXCOORD4;
  let x_148 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145.z, x_145.z, x_145.z)) + x_148);
  let x_150 : vec3<f32> = u_xlat6;
  let x_153 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_150 + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_162 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_162 == 1.0f);
  let x_164 : bool = u_xlatb25;
  if (x_164) {
    let x_169 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_169 == 1.0f);
    let x_173 : vec3<f32> = vs_TEXCOORD4;
    let x_177 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_179 : vec3<f32> = (vec3<f32>(x_173.y, x_173.y, x_173.y) * vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_183 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_185 : vec3<f32> = vs_TEXCOORD4;
    let x_188 : vec4<f32> = u_xlat7;
    let x_190 : vec3<f32> = ((vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185.x, x_185.x, x_185.x)) + vec3<f32>(x_188.x, x_188.y, x_188.z));
    let x_191 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
    let x_194 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_196 : vec3<f32> = vs_TEXCOORD4;
    let x_199 : vec4<f32> = u_xlat7;
    let x_201 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_196.z, x_196.z, x_196.z)) + vec3<f32>(x_199.x, x_199.y, x_199.z));
    let x_202 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_204 : vec4<f32> = u_xlat7;
    let x_207 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_209 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) + vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_210 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_212 : bool = u_xlatb25;
    if (x_212) {
      let x_216 : vec4<f32> = u_xlat7;
      x_213 = vec3<f32>(x_216.x, x_216.y, x_216.z);
    } else {
      let x_219 : vec3<f32> = vs_TEXCOORD4;
      x_213 = x_219;
    }
    let x_220 : vec3<f32> = x_213;
    let x_221 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
    let x_223 : vec4<f32> = u_xlat7;
    let x_227 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_229 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) + -(x_227));
    let x_230 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_232 : vec4<f32> = u_xlat7;
    let x_236 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_237 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) * x_236);
    let x_238 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_238.x, x_237.x, x_237.y, x_237.z);
    let x_241 : f32 = u_xlat7.y;
    u_xlat25 = ((x_241 * 0.25f) + 0.75f);
    let x_248 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_248 * 0.5f) + 0.75f);
    let x_252 : f32 = u_xlat25;
    let x_253 : f32 = u_xlat26;
    u_xlat7.x = max(x_252, x_253);
    let x_264 : vec4<f32> = u_xlat7;
    let x_266 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_264.x, x_264.z, x_264.w));
    u_xlat7 = x_266;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_273 : vec4<f32> = u_xlat7;
  let x_275 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_273, x_275);
  let x_277 : f32 = u_xlat25;
  u_xlat25 = clamp(x_277, 0.0f, 1.0f);
  let x_280 : vec3<f32> = u_xlat6;
  let x_281 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_280, x_281);
  let x_288 : f32 = u_xlat26;
  let x_290 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_288, x_288));
  u_xlat26 = x_290.x;
  let x_292 : f32 = u_xlat25;
  let x_293 : f32 = u_xlat26;
  u_xlat25 = (x_292 * x_293);
  let x_296 : vec3<f32> = vs_TEXCOORD1;
  let x_297 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_296, x_297);
  let x_301 : vec3<f32> = vs_TEXCOORD2;
  let x_302 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_301, x_302);
  let x_306 : vec3<f32> = vs_TEXCOORD3;
  let x_307 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_306, x_307);
  let x_310 : vec3<f32> = u_xlat6;
  let x_311 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_310, x_311);
  let x_313 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_313);
  let x_315 : f32 = u_xlat26;
  let x_317 : vec3<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_315, x_315, x_315) * x_317);
  let x_319 : f32 = u_xlat25;
  let x_323 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_319, x_319, x_319) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec3<f32> = u_xlat3;
  let x_329 : vec3<f32> = (x_326 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_330 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec2<f32> = u_xlat4;
  let x_334 : vec4<f32> = u_xlat7;
  let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.x, x_332.x) * vec3<f32>(x_334.x, x_334.y, x_334.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_340 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : f32 = u_xlat4.x;
  u_xlat25 = ((-(x_343) * 0.959999979f) + 0.959999979f);
  let x_348 : f32 = u_xlat25;
  let x_350 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_348, x_348, x_348) * x_350);
  let x_353 : f32 = u_xlat4.y;
  u_xlat25 = (-(x_353) + 1.0f);
  let x_356 : vec3<f32> = u_xlat0;
  let x_357 : f32 = u_xlat24;
  let x_360 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_356 * vec3<f32>(x_357, x_357, x_357)) + x_360);
  let x_362 : vec3<f32> = u_xlat0;
  let x_363 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_362, x_363);
  let x_365 : f32 = u_xlat24;
  u_xlat24 = max(x_365, 0.001f);
  let x_368 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_368);
  let x_370 : f32 = u_xlat24;
  let x_372 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_370, x_370, x_370) * x_372);
  let x_374 : vec3<f32> = u_xlat5;
  let x_375 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_374, x_375);
  let x_377 : vec3<f32> = u_xlat5;
  let x_378 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_377, x_378);
  let x_382 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_382, 0.0f, 1.0f);
  let x_386 : vec3<f32> = u_xlat5;
  let x_387 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_386, x_387);
  let x_389 : f32 = u_xlat10;
  u_xlat10 = clamp(x_389, 0.0f, 1.0f);
  let x_391 : vec3<f32> = u_xlat1;
  let x_392 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_391, x_392);
  let x_396 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_396, 0.0f, 1.0f);
  let x_401 : f32 = u_xlat0.x;
  let x_403 : f32 = u_xlat0.x;
  u_xlat8.x = (x_401 * x_403);
  let x_406 : vec3<f32> = u_xlat8;
  let x_408 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_406.x, x_406.x), vec2<f32>(x_408, x_408));
  let x_413 : f32 = u_xlat8.x;
  u_xlat8.x = (x_413 + -0.5f);
  let x_419 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_419) + 1.0f);
  let x_422 : f32 = u_xlat16;
  let x_423 : f32 = u_xlat16;
  u_xlat1.x = (x_422 * x_423);
  let x_427 : f32 = u_xlat1.x;
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = (x_427 * x_429);
  let x_432 : f32 = u_xlat16;
  let x_434 : f32 = u_xlat1.x;
  u_xlat16 = (x_432 * x_434);
  let x_437 : f32 = u_xlat8.x;
  let x_438 : f32 = u_xlat16;
  u_xlat16 = ((x_437 * x_438) + 1.0f);
  let x_441 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_441)) + 1.0f);
  let x_448 : f32 = u_xlat1.x;
  let x_450 : f32 = u_xlat1.x;
  u_xlat9 = (x_448 * x_450);
  let x_452 : f32 = u_xlat9;
  let x_453 : f32 = u_xlat9;
  u_xlat9 = (x_452 * x_453);
  let x_456 : f32 = u_xlat1.x;
  let x_457 : f32 = u_xlat9;
  u_xlat1.x = (x_456 * x_457);
  let x_461 : f32 = u_xlat8.x;
  let x_463 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_461 * x_463) + 1.0f);
  let x_468 : f32 = u_xlat8.x;
  let x_469 : f32 = u_xlat16;
  u_xlat8.x = (x_468 * x_469);
  let x_472 : f32 = u_xlat25;
  let x_473 : f32 = u_xlat25;
  u_xlat16 = (x_472 * x_473);
  let x_475 : f32 = u_xlat16;
  u_xlat16 = max(x_475, 0.002f);
  let x_478 : f32 = u_xlat16;
  u_xlat1.x = (-(x_478) + 1.0f);
  let x_482 : f32 = u_xlat24;
  let x_485 : f32 = u_xlat1.x;
  let x_487 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_482) * x_485) + x_487);
  let x_490 : f32 = u_xlat2.x;
  let x_492 : f32 = u_xlat1.x;
  let x_494 : f32 = u_xlat16;
  u_xlat1.x = ((x_490 * x_492) + x_494);
  let x_497 : f32 = u_xlat24;
  let x_500 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_497) * x_500);
  let x_503 : f32 = u_xlat2.x;
  let x_504 : f32 = u_xlat9;
  let x_506 : f32 = u_xlat24;
  u_xlat24 = ((x_503 * x_504) + x_506);
  let x_508 : f32 = u_xlat24;
  u_xlat24 = (x_508 + 0.00001f);
  let x_511 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_511);
  let x_513 : f32 = u_xlat16;
  let x_514 : f32 = u_xlat16;
  u_xlat16 = (x_513 * x_514);
  let x_516 : f32 = u_xlat10;
  let x_517 : f32 = u_xlat16;
  let x_519 : f32 = u_xlat10;
  u_xlat1.x = ((x_516 * x_517) + -(x_519));
  let x_524 : f32 = u_xlat1.x;
  let x_525 : f32 = u_xlat10;
  u_xlat1.x = ((x_524 * x_525) + 1.0f);
  let x_529 : f32 = u_xlat16;
  u_xlat16 = (x_529 * 0.318309873f);
  let x_533 : f32 = u_xlat1.x;
  let x_535 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_533 * x_535) + 0.0000001f);
  let x_540 : f32 = u_xlat16;
  let x_542 : f32 = u_xlat1.x;
  u_xlat16 = (x_540 / x_542);
  let x_544 : f32 = u_xlat16;
  let x_545 : f32 = u_xlat24;
  u_xlat8.y = (x_544 * x_545);
  let x_548 : vec3<f32> = u_xlat2;
  let x_550 : vec3<f32> = u_xlat8;
  let x_552 : vec2<f32> = (vec2<f32>(x_548.x, x_548.x) * vec2<f32>(x_550.x, x_550.y));
  let x_553 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_552.x, x_552.y, x_553.z);
  let x_556 : f32 = u_xlat8.y;
  u_xlat16 = (x_556 * 3.141592741f);
  let x_559 : f32 = u_xlat16;
  u_xlat16 = max(x_559, 0.0f);
  let x_561 : vec4<f32> = u_xlat7;
  let x_563 : vec4<f32> = u_xlat7;
  u_xlat24 = dot(vec3<f32>(x_561.x, x_561.y, x_561.z), vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_567 : f32 = u_xlat24;
  u_xlatb24 = !((x_567 == 0.0f));
  let x_569 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_569);
  let x_571 : f32 = u_xlat24;
  let x_572 : f32 = u_xlat16;
  u_xlat16 = (x_571 * x_572);
  let x_574 : vec3<f32> = u_xlat8;
  let x_576 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_574.x, x_574.x, x_574.x) * x_576);
  let x_578 : vec3<f32> = u_xlat6;
  let x_579 : f32 = u_xlat16;
  u_xlat8 = (x_578 * vec3<f32>(x_579, x_579, x_579));
  let x_583 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_583) + 1.0f);
  let x_588 : f32 = u_xlat0.x;
  let x_590 : f32 = u_xlat0.x;
  u_xlat25 = (x_588 * x_590);
  let x_592 : f32 = u_xlat25;
  let x_593 : f32 = u_xlat25;
  u_xlat25 = (x_592 * x_593);
  let x_596 : f32 = u_xlat0.x;
  let x_597 : f32 = u_xlat25;
  u_xlat0.x = (x_596 * x_597);
  let x_600 : vec4<f32> = u_xlat7;
  u_xlat2 = (-(vec3<f32>(x_600.x, x_600.y, x_600.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_605 : vec3<f32> = u_xlat2;
  let x_606 : vec3<f32> = u_xlat0;
  let x_609 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_605 * vec3<f32>(x_606.x, x_606.x, x_606.x)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec3<f32> = u_xlat8;
  let x_613 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_612 * x_613);
  let x_615 : vec3<f32> = u_xlat3;
  let x_616 : vec3<f32> = u_xlat1;
  let x_618 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_615 * x_616) + x_618);
  let x_622 : f32 = vs_TEXCOORD7;
  let x_624 : f32 = x_18.x_ProjectionParams.y;
  u_xlat24 = (x_622 / x_624);
  let x_626 : f32 = u_xlat24;
  u_xlat24 = (-(x_626) + 1.0f);
  let x_629 : f32 = u_xlat24;
  let x_631 : f32 = x_18.x_ProjectionParams.z;
  u_xlat24 = (x_629 * x_631);
  let x_633 : f32 = u_xlat24;
  u_xlat24 = max(x_633, 0.0f);
  let x_635 : f32 = u_xlat24;
  let x_638 : f32 = x_18.unity_FogParams.x;
  u_xlat24 = (x_635 * x_638);
  let x_640 : f32 = u_xlat24;
  let x_641 : f32 = u_xlat24;
  u_xlat24 = (x_640 * -(x_641));
  let x_644 : f32 = u_xlat24;
  u_xlat24 = exp2(x_644);
  let x_648 : vec3<f32> = u_xlat0;
  let x_649 : f32 = u_xlat24;
  let x_651 : vec3<f32> = (x_648 * vec3<f32>(x_649, x_649, x_649));
  let x_652 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
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

