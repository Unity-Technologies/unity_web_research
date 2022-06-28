struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(8) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicSmooth : sampler;

var<private> u_xlat16 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(9) var sampler_Normal : sampler;

var<private> u_xlat23 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_245 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec4<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_51.x, x_51.y));
  u_xlat22 = x_53.x;
  let x_64 : vec4<f32> = vs_TEXCOORD0;
  let x_66 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_64.z, x_64.w));
  let x_67 : vec2<f32> = vec2<f32>(x_66.x, x_66.w);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_68.z, x_68.w);
  let x_70 : f32 = u_xlat22;
  u_xlat22 = (-(x_70) + 1.0f);
  let x_74 : f32 = u_xlat22;
  let x_78 : f32 = x_18.x_Cutoff;
  u_xlat22 = (x_74 + -(x_78));
  let x_84 : f32 = x_18.x_EdgeSize;
  u_xlat16 = (1.0f / -(x_84));
  let x_87 : f32 = u_xlat22;
  let x_88 : f32 = u_xlat16;
  u_xlat22 = (x_87 * x_88);
  let x_90 : f32 = u_xlat22;
  u_xlat22 = clamp(x_90, 0.0f, 1.0f);
  let x_93 : f32 = u_xlat22;
  u_xlat16 = ((x_93 * -2.0f) + 3.0f);
  let x_98 : f32 = u_xlat22;
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (x_98 * x_99);
  let x_107 : vec4<f32> = vs_TEXCOORD0;
  let x_109 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_107.z, x_107.w));
  u_xlat3 = vec3<f32>(x_109.x, x_109.y, x_109.z);
  let x_112 : vec3<f32> = u_xlat3;
  let x_116 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_112 * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_125 : vec4<f32> = vs_TEXCOORD0;
  let x_127 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_125.z, x_125.w));
  u_xlat5 = vec3<f32>(x_127.x, x_127.y, x_127.w);
  let x_131 : f32 = u_xlat5.z;
  let x_133 : f32 = u_xlat5.x;
  u_xlat5.x = (x_131 * x_133);
  let x_136 : vec3<f32> = u_xlat5;
  let x_143 : vec2<f32> = ((vec2<f32>(x_136.x, x_136.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_144 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_143.x, x_143.y, x_144.z);
  let x_147 : vec3<f32> = u_xlat5;
  let x_149 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_147.x, x_147.y), vec2<f32>(x_149.x, x_149.y));
  let x_152 : f32 = u_xlat23;
  u_xlat23 = min(x_152, 1.0f);
  let x_154 : f32 = u_xlat23;
  u_xlat23 = (-(x_154) + 1.0f);
  let x_157 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_157);
  let x_161 : f32 = u_xlat2.x;
  let x_164 : f32 = x_18.x_Metallic;
  u_xlat2.x = (x_161 * x_164);
  let x_167 : f32 = u_xlat16;
  let x_169 : f32 = u_xlat22;
  let x_172 : f32 = x_18.x_Cutoff;
  u_xlat22 = ((-(x_167) * x_169) + -(x_172));
  let x_175 : f32 = u_xlat22;
  u_xlat22 = (x_175 + 1.0f);
  let x_180 : f32 = u_xlat22;
  u_xlatb22 = (x_180 < 0.0f);
  let x_182 : bool = u_xlatb22;
  if (((select(0i, 1i, x_182) * -1i) != 0i)) {
    discard;
  }
  let x_193 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_193 == 1.0f);
  let x_195 : bool = u_xlatb22;
  if (x_195) {
    let x_200 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_200 == 1.0f);
    let x_203 : vec3<f32> = vs_TEXCOORD4;
    let x_207 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_209 : vec3<f32> = (vec3<f32>(x_203.y, x_203.y, x_203.y) * vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_210 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_213 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_215 : vec3<f32> = vs_TEXCOORD4;
    let x_218 : vec4<f32> = u_xlat6;
    let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.x, x_215.x, x_215.x)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
    let x_221 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
    let x_225 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_227 : vec3<f32> = vs_TEXCOORD4;
    let x_230 : vec4<f32> = u_xlat6;
    let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.z, x_227.z, x_227.z)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
    let x_233 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_235 : vec4<f32> = u_xlat6;
    let x_238 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_240 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) + vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_241 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_243 : bool = u_xlatb22;
    if (x_243) {
      let x_248 : vec4<f32> = u_xlat6;
      x_245 = vec3<f32>(x_248.x, x_248.y, x_248.z);
    } else {
      let x_251 : vec3<f32> = vs_TEXCOORD4;
      x_245 = x_251;
    }
    let x_252 : vec3<f32> = x_245;
    let x_253 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat6;
    let x_259 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_261 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + -(x_259));
    let x_262 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat6;
    let x_268 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_269 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) * x_268);
    let x_270 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
    let x_273 : f32 = u_xlat6.y;
    u_xlat22 = ((x_273 * 0.25f) + 0.75f);
    let x_279 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat16 = ((x_279 * 0.5f) + 0.75f);
    let x_283 : f32 = u_xlat22;
    let x_284 : f32 = u_xlat16;
    u_xlat6.x = max(x_283, x_284);
    let x_295 : vec4<f32> = u_xlat6;
    let x_297 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_295.x, x_295.z, x_295.w));
    u_xlat6 = x_297;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_304 : vec4<f32> = u_xlat6;
  let x_306 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_304, x_306);
  let x_308 : f32 = u_xlat22;
  u_xlat22 = clamp(x_308, 0.0f, 1.0f);
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_312 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_311, x_312);
  let x_316 : vec3<f32> = vs_TEXCOORD2;
  let x_317 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_316, x_317);
  let x_321 : vec3<f32> = vs_TEXCOORD3;
  let x_322 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_321, x_322);
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_330);
  let x_332 : f32 = u_xlat16;
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_332, x_332, x_332) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : f32 = u_xlat22;
  let x_341 : vec4<f32> = x_18.x_LightColor0;
  let x_343 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec3<f32> = u_xlat3;
  let x_348 : vec4<f32> = x_18.x_Color;
  u_xlat3 = ((x_346 * vec3<f32>(x_348.x, x_348.y, x_348.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_354 : vec4<f32> = u_xlat2;
  let x_356 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_354.x, x_354.x, x_354.x) * x_356) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_362 : f32 = u_xlat2.x;
  u_xlat22 = ((-(x_362) * 0.959999979f) + 0.959999979f);
  let x_367 : f32 = u_xlat22;
  let x_369 : vec3<f32> = u_xlat4;
  let x_370 : vec3<f32> = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_370.x, x_371.y, x_370.y, x_370.z);
  let x_374 : f32 = u_xlat2.y;
  let x_378 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_374) * x_378) + 1.0f);
  let x_381 : vec3<f32> = u_xlat0;
  let x_382 : f32 = u_xlat21;
  let x_386 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_381 * vec3<f32>(x_382, x_382, x_382)) + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec3<f32> = u_xlat0;
  let x_390 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_389, x_390);
  let x_392 : f32 = u_xlat21;
  u_xlat21 = max(x_392, 0.001f);
  let x_395 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_395);
  let x_397 : f32 = u_xlat21;
  let x_399 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_397, x_397, x_397) * x_399);
  let x_401 : vec3<f32> = u_xlat5;
  let x_402 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_401, x_402);
  let x_404 : vec3<f32> = u_xlat5;
  let x_406 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_404, vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_411 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_411, 0.0f, 1.0f);
  let x_415 : vec3<f32> = u_xlat5;
  let x_416 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_415, x_416);
  let x_418 : f32 = u_xlat8;
  u_xlat8 = clamp(x_418, 0.0f, 1.0f);
  let x_421 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_423 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_421.x, x_421.y, x_421.z), x_423);
  let x_427 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_427, 0.0f, 1.0f);
  let x_432 : f32 = u_xlat0.x;
  let x_434 : f32 = u_xlat0.x;
  u_xlat7.x = (x_432 * x_434);
  let x_437 : vec3<f32> = u_xlat7;
  let x_439 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_437.x, x_437.x), vec2<f32>(x_439, x_439));
  let x_444 : f32 = u_xlat7.x;
  u_xlat7.x = (x_444 + -0.5f);
  let x_450 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_450) + 1.0f);
  let x_454 : f32 = u_xlat14;
  let x_455 : f32 = u_xlat14;
  u_xlat15 = (x_454 * x_455);
  let x_457 : f32 = u_xlat15;
  let x_458 : f32 = u_xlat15;
  u_xlat15 = (x_457 * x_458);
  let x_460 : f32 = u_xlat14;
  let x_461 : f32 = u_xlat15;
  u_xlat14 = (x_460 * x_461);
  let x_464 : f32 = u_xlat7.x;
  let x_465 : f32 = u_xlat14;
  u_xlat14 = ((x_464 * x_465) + 1.0f);
  let x_468 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_468)) + 1.0f);
  let x_473 : f32 = u_xlat15;
  let x_474 : f32 = u_xlat15;
  u_xlat9 = (x_473 * x_474);
  let x_476 : f32 = u_xlat9;
  let x_477 : f32 = u_xlat9;
  u_xlat9 = (x_476 * x_477);
  let x_479 : f32 = u_xlat15;
  let x_480 : f32 = u_xlat9;
  u_xlat15 = (x_479 * x_480);
  let x_483 : f32 = u_xlat7.x;
  let x_484 : f32 = u_xlat15;
  u_xlat7.x = ((x_483 * x_484) + 1.0f);
  let x_489 : f32 = u_xlat7.x;
  let x_490 : f32 = u_xlat14;
  u_xlat7.x = (x_489 * x_490);
  let x_493 : f32 = u_xlat22;
  let x_494 : f32 = u_xlat22;
  u_xlat14 = (x_493 * x_494);
  let x_496 : f32 = u_xlat14;
  u_xlat14 = max(x_496, 0.002f);
  let x_499 : f32 = u_xlat14;
  u_xlat15 = (-(x_499) + 1.0f);
  let x_502 : f32 = u_xlat21;
  let x_504 : f32 = u_xlat15;
  let x_506 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_502) * x_504) + x_506);
  let x_509 : f32 = u_xlat1.x;
  let x_510 : f32 = u_xlat15;
  let x_512 : f32 = u_xlat14;
  u_xlat15 = ((x_509 * x_510) + x_512);
  let x_514 : f32 = u_xlat21;
  let x_516 : f32 = u_xlat15;
  u_xlat21 = (abs(x_514) * x_516);
  let x_519 : f32 = u_xlat1.x;
  let x_520 : f32 = u_xlat22;
  let x_522 : f32 = u_xlat21;
  u_xlat21 = ((x_519 * x_520) + x_522);
  let x_524 : f32 = u_xlat21;
  u_xlat21 = (x_524 + 0.00001f);
  let x_527 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_527);
  let x_529 : f32 = u_xlat14;
  let x_530 : f32 = u_xlat14;
  u_xlat14 = (x_529 * x_530);
  let x_532 : f32 = u_xlat8;
  let x_533 : f32 = u_xlat14;
  let x_535 : f32 = u_xlat8;
  u_xlat15 = ((x_532 * x_533) + -(x_535));
  let x_538 : f32 = u_xlat15;
  let x_539 : f32 = u_xlat8;
  u_xlat8 = ((x_538 * x_539) + 1.0f);
  let x_542 : f32 = u_xlat14;
  u_xlat14 = (x_542 * 0.318309873f);
  let x_545 : f32 = u_xlat8;
  let x_546 : f32 = u_xlat8;
  u_xlat8 = ((x_545 * x_546) + 0.0000001f);
  let x_550 : f32 = u_xlat14;
  let x_551 : f32 = u_xlat8;
  u_xlat14 = (x_550 / x_551);
  let x_553 : f32 = u_xlat14;
  let x_554 : f32 = u_xlat21;
  u_xlat7.y = (x_553 * x_554);
  let x_557 : vec3<f32> = u_xlat1;
  let x_559 : vec3<f32> = u_xlat7;
  let x_561 : vec2<f32> = (vec2<f32>(x_557.x, x_557.x) * vec2<f32>(x_559.x, x_559.y));
  let x_562 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_561.x, x_561.y, x_562.z);
  let x_565 : f32 = u_xlat7.y;
  u_xlat14 = (x_565 * 3.141592741f);
  let x_568 : f32 = u_xlat14;
  u_xlat14 = max(x_568, 0.0f);
  let x_570 : vec3<f32> = u_xlat3;
  let x_571 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_570, x_571);
  let x_574 : f32 = u_xlat21;
  u_xlatb21 = !((x_574 == 0.0f));
  let x_576 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_576);
  let x_578 : f32 = u_xlat21;
  let x_579 : f32 = u_xlat14;
  u_xlat14 = (x_578 * x_579);
  let x_581 : vec3<f32> = u_xlat7;
  let x_583 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_581.x, x_581.x, x_581.x) * vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat6;
  let x_588 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588, x_588, x_588));
  let x_592 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_592) + 1.0f);
  let x_597 : f32 = u_xlat0.x;
  let x_599 : f32 = u_xlat0.x;
  u_xlat22 = (x_597 * x_599);
  let x_601 : f32 = u_xlat22;
  let x_602 : f32 = u_xlat22;
  u_xlat22 = (x_601 * x_602);
  let x_605 : f32 = u_xlat0.x;
  let x_606 : f32 = u_xlat22;
  u_xlat0.x = (x_605 * x_606);
  let x_609 : vec3<f32> = u_xlat3;
  u_xlat4 = (-(x_609) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_613 : vec3<f32> = u_xlat4;
  let x_614 : vec3<f32> = u_xlat0;
  let x_617 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_613 * vec3<f32>(x_614.x, x_614.x, x_614.x)) + x_617);
  let x_619 : vec3<f32> = u_xlat7;
  let x_620 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_619 * x_620);
  let x_624 : vec4<f32> = u_xlat2;
  let x_626 : vec3<f32> = u_xlat1;
  let x_628 : vec3<f32> = u_xlat0;
  let x_629 : vec3<f32> = ((vec3<f32>(x_624.x, x_624.z, x_624.w) * x_626) + x_628);
  let x_630 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

