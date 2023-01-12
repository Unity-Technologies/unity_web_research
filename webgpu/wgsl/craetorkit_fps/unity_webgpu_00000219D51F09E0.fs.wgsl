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

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

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
  let x_290 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_288, x_288));
  u_xlat26 = x_290.x;
  let x_301 : vec3<f32> = u_xlat6;
  let x_302 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_301);
  u_xlat27 = x_302.w;
  let x_304 : f32 = u_xlat26;
  let x_305 : f32 = u_xlat27;
  u_xlat26 = (x_304 * x_305);
  let x_307 : f32 = u_xlat25;
  let x_308 : f32 = u_xlat26;
  u_xlat25 = (x_307 * x_308);
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_311, x_312);
  let x_316 : vec3<f32> = vs_TEXCOORD2;
  let x_317 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_316, x_317);
  let x_321 : vec3<f32> = vs_TEXCOORD3;
  let x_322 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_321, x_322);
  let x_325 : vec3<f32> = u_xlat6;
  let x_326 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_325, x_326);
  let x_328 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_328);
  let x_330 : f32 = u_xlat26;
  let x_332 : vec3<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_330, x_330, x_330) * x_332);
  let x_334 : f32 = u_xlat25;
  let x_338 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_334, x_334, x_334) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec3<f32> = u_xlat3;
  let x_344 : vec3<f32> = (x_341 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_345 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec2<f32> = u_xlat4;
  let x_349 : vec4<f32> = u_xlat7;
  let x_354 : vec3<f32> = ((vec3<f32>(x_347.x, x_347.x, x_347.x) * vec3<f32>(x_349.x, x_349.y, x_349.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_355 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : f32 = u_xlat4.x;
  u_xlat25 = ((-(x_358) * 0.959999979f) + 0.959999979f);
  let x_363 : f32 = u_xlat25;
  let x_365 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_363, x_363, x_363) * x_365);
  let x_368 : f32 = u_xlat4.y;
  u_xlat25 = (-(x_368) + 1.0f);
  let x_371 : vec3<f32> = u_xlat0;
  let x_372 : f32 = u_xlat24;
  let x_375 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_371 * vec3<f32>(x_372, x_372, x_372)) + x_375);
  let x_377 : vec3<f32> = u_xlat0;
  let x_378 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_377, x_378);
  let x_380 : f32 = u_xlat24;
  u_xlat24 = max(x_380, 0.001f);
  let x_383 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_383);
  let x_385 : f32 = u_xlat24;
  let x_387 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_385, x_385, x_385) * x_387);
  let x_389 : vec3<f32> = u_xlat5;
  let x_390 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_389, x_390);
  let x_392 : vec3<f32> = u_xlat5;
  let x_393 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_392, x_393);
  let x_397 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_397, 0.0f, 1.0f);
  let x_401 : vec3<f32> = u_xlat5;
  let x_402 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_401, x_402);
  let x_404 : f32 = u_xlat10;
  u_xlat10 = clamp(x_404, 0.0f, 1.0f);
  let x_406 : vec3<f32> = u_xlat1;
  let x_407 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_406, x_407);
  let x_411 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_411, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat0.x;
  let x_418 : f32 = u_xlat0.x;
  u_xlat8.x = (x_416 * x_418);
  let x_421 : vec3<f32> = u_xlat8;
  let x_423 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_421.x, x_421.x), vec2<f32>(x_423, x_423));
  let x_428 : f32 = u_xlat8.x;
  u_xlat8.x = (x_428 + -0.5f);
  let x_434 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat16;
  let x_438 : f32 = u_xlat16;
  u_xlat1.x = (x_437 * x_438);
  let x_442 : f32 = u_xlat1.x;
  let x_444 : f32 = u_xlat1.x;
  u_xlat1.x = (x_442 * x_444);
  let x_447 : f32 = u_xlat16;
  let x_449 : f32 = u_xlat1.x;
  u_xlat16 = (x_447 * x_449);
  let x_452 : f32 = u_xlat8.x;
  let x_453 : f32 = u_xlat16;
  u_xlat16 = ((x_452 * x_453) + 1.0f);
  let x_456 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_456)) + 1.0f);
  let x_463 : f32 = u_xlat1.x;
  let x_465 : f32 = u_xlat1.x;
  u_xlat9 = (x_463 * x_465);
  let x_467 : f32 = u_xlat9;
  let x_468 : f32 = u_xlat9;
  u_xlat9 = (x_467 * x_468);
  let x_471 : f32 = u_xlat1.x;
  let x_472 : f32 = u_xlat9;
  u_xlat1.x = (x_471 * x_472);
  let x_476 : f32 = u_xlat8.x;
  let x_478 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_476 * x_478) + 1.0f);
  let x_483 : f32 = u_xlat8.x;
  let x_484 : f32 = u_xlat16;
  u_xlat8.x = (x_483 * x_484);
  let x_487 : f32 = u_xlat25;
  let x_488 : f32 = u_xlat25;
  u_xlat16 = (x_487 * x_488);
  let x_490 : f32 = u_xlat16;
  u_xlat16 = max(x_490, 0.002f);
  let x_493 : f32 = u_xlat16;
  u_xlat1.x = (-(x_493) + 1.0f);
  let x_497 : f32 = u_xlat24;
  let x_500 : f32 = u_xlat1.x;
  let x_502 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_497) * x_500) + x_502);
  let x_505 : f32 = u_xlat2.x;
  let x_507 : f32 = u_xlat1.x;
  let x_509 : f32 = u_xlat16;
  u_xlat1.x = ((x_505 * x_507) + x_509);
  let x_512 : f32 = u_xlat24;
  let x_515 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_512) * x_515);
  let x_518 : f32 = u_xlat2.x;
  let x_519 : f32 = u_xlat9;
  let x_521 : f32 = u_xlat24;
  u_xlat24 = ((x_518 * x_519) + x_521);
  let x_523 : f32 = u_xlat24;
  u_xlat24 = (x_523 + 0.00001f);
  let x_526 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_526);
  let x_528 : f32 = u_xlat16;
  let x_529 : f32 = u_xlat16;
  u_xlat16 = (x_528 * x_529);
  let x_531 : f32 = u_xlat10;
  let x_532 : f32 = u_xlat16;
  let x_534 : f32 = u_xlat10;
  u_xlat1.x = ((x_531 * x_532) + -(x_534));
  let x_539 : f32 = u_xlat1.x;
  let x_540 : f32 = u_xlat10;
  u_xlat1.x = ((x_539 * x_540) + 1.0f);
  let x_544 : f32 = u_xlat16;
  u_xlat16 = (x_544 * 0.318309873f);
  let x_548 : f32 = u_xlat1.x;
  let x_550 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_548 * x_550) + 0.0000001f);
  let x_555 : f32 = u_xlat16;
  let x_557 : f32 = u_xlat1.x;
  u_xlat16 = (x_555 / x_557);
  let x_559 : f32 = u_xlat16;
  let x_560 : f32 = u_xlat24;
  u_xlat8.y = (x_559 * x_560);
  let x_563 : vec3<f32> = u_xlat2;
  let x_565 : vec3<f32> = u_xlat8;
  let x_567 : vec2<f32> = (vec2<f32>(x_563.x, x_563.x) * vec2<f32>(x_565.x, x_565.y));
  let x_568 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_567.x, x_567.y, x_568.z);
  let x_571 : f32 = u_xlat8.y;
  u_xlat16 = (x_571 * 3.141592741f);
  let x_574 : f32 = u_xlat16;
  u_xlat16 = max(x_574, 0.0f);
  let x_576 : vec4<f32> = u_xlat7;
  let x_578 : vec4<f32> = u_xlat7;
  u_xlat24 = dot(vec3<f32>(x_576.x, x_576.y, x_576.z), vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_582 : f32 = u_xlat24;
  u_xlatb24 = !((x_582 == 0.0f));
  let x_584 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_584);
  let x_586 : f32 = u_xlat24;
  let x_587 : f32 = u_xlat16;
  u_xlat16 = (x_586 * x_587);
  let x_589 : vec3<f32> = u_xlat8;
  let x_591 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_589.x, x_589.x, x_589.x) * x_591);
  let x_593 : vec3<f32> = u_xlat6;
  let x_594 : f32 = u_xlat16;
  u_xlat8 = (x_593 * vec3<f32>(x_594, x_594, x_594));
  let x_598 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_598) + 1.0f);
  let x_603 : f32 = u_xlat0.x;
  let x_605 : f32 = u_xlat0.x;
  u_xlat25 = (x_603 * x_605);
  let x_607 : f32 = u_xlat25;
  let x_608 : f32 = u_xlat25;
  u_xlat25 = (x_607 * x_608);
  let x_611 : f32 = u_xlat0.x;
  let x_612 : f32 = u_xlat25;
  u_xlat0.x = (x_611 * x_612);
  let x_615 : vec4<f32> = u_xlat7;
  u_xlat2 = (-(vec3<f32>(x_615.x, x_615.y, x_615.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_620 : vec3<f32> = u_xlat2;
  let x_621 : vec3<f32> = u_xlat0;
  let x_624 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_620 * vec3<f32>(x_621.x, x_621.x, x_621.x)) + vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec3<f32> = u_xlat8;
  let x_628 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_627 * x_628);
  let x_630 : vec3<f32> = u_xlat3;
  let x_631 : vec3<f32> = u_xlat1;
  let x_633 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_630 * x_631) + x_633);
  let x_637 : f32 = vs_TEXCOORD7;
  let x_639 : f32 = x_18.x_ProjectionParams.y;
  u_xlat24 = (x_637 / x_639);
  let x_641 : f32 = u_xlat24;
  u_xlat24 = (-(x_641) + 1.0f);
  let x_644 : f32 = u_xlat24;
  let x_646 : f32 = x_18.x_ProjectionParams.z;
  u_xlat24 = (x_644 * x_646);
  let x_648 : f32 = u_xlat24;
  u_xlat24 = max(x_648, 0.0f);
  let x_650 : f32 = u_xlat24;
  let x_653 : f32 = x_18.unity_FogParams.x;
  u_xlat24 = (x_650 * x_653);
  let x_655 : f32 = u_xlat24;
  let x_656 : f32 = u_xlat24;
  u_xlat24 = (x_655 * -(x_656));
  let x_659 : f32 = u_xlat24;
  u_xlat24 = exp2(x_659);
  let x_663 : vec3<f32> = u_xlat0;
  let x_664 : f32 = u_xlat24;
  let x_666 : vec3<f32> = (x_663 * vec3<f32>(x_664, x_664, x_664));
  let x_667 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
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

