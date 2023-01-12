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
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(6) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_NormalMap : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_168 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
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
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_60);
  let x_62 : vec2<f32> = vec2<f32>(x_61.x, x_61.w);
  let x_63 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_62.x, x_62.y, x_63.z);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_71);
  u_xlat4 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_77 : f32 = u_xlat4.z;
  let x_80 : f32 = u_xlat4.x;
  u_xlat4.x = (x_77 * x_80);
  let x_83 : vec3<f32> = u_xlat4;
  let x_90 : vec2<f32> = ((vec2<f32>(x_83.x, x_83.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_90.x, x_90.y, x_91.z);
  let x_94 : vec3<f32> = u_xlat4;
  let x_96 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(vec2<f32>(x_94.x, x_94.y), vec2<f32>(x_96.x, x_96.y));
  let x_99 : f32 = u_xlat22;
  u_xlat22 = min(x_99, 1.0f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = (-(x_102) + 1.0f);
  let x_105 : f32 = u_xlat22;
  u_xlat4.z = sqrt(x_105);
  let x_114 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_114 == 1.0f);
  let x_116 : bool = u_xlatb22;
  if (x_116) {
    let x_121 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_121 == 1.0f);
    let x_125 : vec3<f32> = vs_TEXCOORD4;
    let x_131 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_133 : vec3<f32> = (vec3<f32>(x_125.y, x_125.y, x_125.y) * vec3<f32>(x_131.x, x_131.y, x_131.z));
    let x_134 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
    let x_137 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_139 : vec3<f32> = vs_TEXCOORD4;
    let x_142 : vec4<f32> = u_xlat5;
    let x_144 : vec3<f32> = ((vec3<f32>(x_137.x, x_137.y, x_137.z) * vec3<f32>(x_139.x, x_139.x, x_139.x)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
    let x_145 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
    let x_149 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_151 : vec3<f32> = vs_TEXCOORD4;
    let x_154 : vec4<f32> = u_xlat5;
    let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.z, x_151.z, x_151.z)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
    let x_157 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
    let x_159 : vec4<f32> = u_xlat5;
    let x_162 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_164 : vec3<f32> = (vec3<f32>(x_159.x, x_159.y, x_159.z) + vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_167 : bool = u_xlatb22;
    if (x_167) {
      let x_171 : vec4<f32> = u_xlat5;
      x_168 = vec3<f32>(x_171.x, x_171.y, x_171.z);
    } else {
      let x_174 : vec3<f32> = vs_TEXCOORD4;
      x_168 = x_174;
    }
    let x_175 : vec3<f32> = x_168;
    let x_176 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
    let x_178 : vec4<f32> = u_xlat5;
    let x_182 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_184 : vec3<f32> = (vec3<f32>(x_178.x, x_178.y, x_178.z) + -(x_182));
    let x_185 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : vec4<f32> = u_xlat5;
    let x_191 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_192 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) * x_191);
    let x_193 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_193.x, x_192.x, x_192.y, x_192.z);
    let x_196 : f32 = u_xlat5.y;
    u_xlat22 = ((x_196 * 0.25f) + 0.75f);
    let x_203 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_203 * 0.5f) + 0.75f);
    let x_207 : f32 = u_xlat22;
    let x_208 : f32 = u_xlat23;
    u_xlat5.x = max(x_207, x_208);
    let x_219 : vec4<f32> = u_xlat5;
    let x_221 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_219.x, x_219.z, x_219.w));
    u_xlat5 = x_221;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_228 : vec4<f32> = u_xlat5;
  let x_230 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_228, x_230);
  let x_232 : f32 = u_xlat22;
  u_xlat22 = clamp(x_232, 0.0f, 1.0f);
  let x_236 : vec3<f32> = vs_TEXCOORD1;
  let x_237 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_236, x_237);
  let x_241 : vec3<f32> = vs_TEXCOORD2;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_241, x_242);
  let x_246 : vec3<f32> = vs_TEXCOORD3;
  let x_247 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_246, x_247);
  let x_250 : vec4<f32> = u_xlat5;
  let x_252 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_255);
  let x_257 : f32 = u_xlat23;
  let x_259 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_257, x_257, x_257) * vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : f32 = u_xlat22;
  let x_266 : vec4<f32> = x_18.x_LightColor0;
  let x_268 : vec3<f32> = (vec3<f32>(x_262, x_262, x_262) * vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec3<f32> = u_xlat2;
  u_xlat6 = (x_272 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_276 : vec3<f32> = u_xlat3;
  let x_278 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_276.x, x_276.x, x_276.x) * x_278) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_284 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_284) * 0.959999979f) + 0.959999979f);
  let x_289 : f32 = u_xlat22;
  let x_291 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_289, x_289, x_289) * x_291);
  let x_294 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_294) + 1.0f);
  let x_297 : vec3<f32> = u_xlat0;
  let x_298 : f32 = u_xlat21;
  let x_302 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_297 * vec3<f32>(x_298, x_298, x_298)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec3<f32> = u_xlat0;
  let x_306 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_305, x_306);
  let x_308 : f32 = u_xlat21;
  u_xlat21 = max(x_308, 0.001f);
  let x_311 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_311);
  let x_313 : f32 = u_xlat21;
  let x_315 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_313, x_313, x_313) * x_315);
  let x_317 : vec3<f32> = u_xlat4;
  let x_318 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_317, x_318);
  let x_320 : vec3<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_320, vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_327 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_327, 0.0f, 1.0f);
  let x_331 : vec3<f32> = u_xlat4;
  let x_332 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_331, x_332);
  let x_334 : f32 = u_xlat8;
  u_xlat8 = clamp(x_334, 0.0f, 1.0f);
  let x_337 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_339 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_337.x, x_337.y, x_337.z), x_339);
  let x_343 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_343, 0.0f, 1.0f);
  let x_348 : f32 = u_xlat0.x;
  let x_350 : f32 = u_xlat0.x;
  u_xlat7.x = (x_348 * x_350);
  let x_353 : vec3<f32> = u_xlat7;
  let x_355 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_353.x, x_353.x), vec2<f32>(x_355, x_355));
  let x_360 : f32 = u_xlat7.x;
  u_xlat7.x = (x_360 + -0.5f);
  let x_366 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_366) + 1.0f);
  let x_370 : f32 = u_xlat14;
  let x_371 : f32 = u_xlat14;
  u_xlat15 = (x_370 * x_371);
  let x_373 : f32 = u_xlat15;
  let x_374 : f32 = u_xlat15;
  u_xlat15 = (x_373 * x_374);
  let x_376 : f32 = u_xlat14;
  let x_377 : f32 = u_xlat15;
  u_xlat14 = (x_376 * x_377);
  let x_380 : f32 = u_xlat7.x;
  let x_381 : f32 = u_xlat14;
  u_xlat14 = ((x_380 * x_381) + 1.0f);
  let x_384 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_384)) + 1.0f);
  let x_388 : f32 = u_xlat15;
  let x_389 : f32 = u_xlat15;
  u_xlat23 = (x_388 * x_389);
  let x_391 : f32 = u_xlat23;
  let x_392 : f32 = u_xlat23;
  u_xlat23 = (x_391 * x_392);
  let x_394 : f32 = u_xlat15;
  let x_395 : f32 = u_xlat23;
  u_xlat15 = (x_394 * x_395);
  let x_398 : f32 = u_xlat7.x;
  let x_399 : f32 = u_xlat15;
  u_xlat7.x = ((x_398 * x_399) + 1.0f);
  let x_404 : f32 = u_xlat7.x;
  let x_405 : f32 = u_xlat14;
  u_xlat7.x = (x_404 * x_405);
  let x_408 : f32 = u_xlat22;
  let x_409 : f32 = u_xlat22;
  u_xlat14 = (x_408 * x_409);
  let x_411 : f32 = u_xlat14;
  u_xlat14 = max(x_411, 0.002f);
  let x_414 : f32 = u_xlat14;
  u_xlat15 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat21;
  let x_419 : f32 = u_xlat15;
  let x_421 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_417) * x_419) + x_421);
  let x_424 : f32 = u_xlat1.x;
  let x_425 : f32 = u_xlat15;
  let x_427 : f32 = u_xlat14;
  u_xlat15 = ((x_424 * x_425) + x_427);
  let x_429 : f32 = u_xlat21;
  let x_431 : f32 = u_xlat15;
  u_xlat21 = (abs(x_429) * x_431);
  let x_434 : f32 = u_xlat1.x;
  let x_435 : f32 = u_xlat22;
  let x_437 : f32 = u_xlat21;
  u_xlat21 = ((x_434 * x_435) + x_437);
  let x_439 : f32 = u_xlat21;
  u_xlat21 = (x_439 + 0.00001f);
  let x_442 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_442);
  let x_444 : f32 = u_xlat14;
  let x_445 : f32 = u_xlat14;
  u_xlat14 = (x_444 * x_445);
  let x_447 : f32 = u_xlat8;
  let x_448 : f32 = u_xlat14;
  let x_450 : f32 = u_xlat8;
  u_xlat15 = ((x_447 * x_448) + -(x_450));
  let x_453 : f32 = u_xlat15;
  let x_454 : f32 = u_xlat8;
  u_xlat8 = ((x_453 * x_454) + 1.0f);
  let x_457 : f32 = u_xlat14;
  u_xlat14 = (x_457 * 0.318309873f);
  let x_460 : f32 = u_xlat8;
  let x_461 : f32 = u_xlat8;
  u_xlat8 = ((x_460 * x_461) + 0.0000001f);
  let x_465 : f32 = u_xlat14;
  let x_466 : f32 = u_xlat8;
  u_xlat14 = (x_465 / x_466);
  let x_468 : f32 = u_xlat14;
  let x_469 : f32 = u_xlat21;
  u_xlat7.y = (x_468 * x_469);
  let x_472 : vec3<f32> = u_xlat1;
  let x_474 : vec3<f32> = u_xlat7;
  let x_476 : vec2<f32> = (vec2<f32>(x_472.x, x_472.x) * vec2<f32>(x_474.x, x_474.y));
  let x_477 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_476.x, x_476.y, x_477.z);
  let x_480 : f32 = u_xlat7.y;
  u_xlat14 = (x_480 * 3.141592741f);
  let x_483 : f32 = u_xlat14;
  u_xlat14 = max(x_483, 0.0f);
  let x_485 : vec3<f32> = u_xlat6;
  let x_486 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_485, x_486);
  let x_489 : f32 = u_xlat21;
  u_xlatb21 = !((x_489 == 0.0f));
  let x_491 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_491);
  let x_493 : f32 = u_xlat21;
  let x_494 : f32 = u_xlat14;
  u_xlat14 = (x_493 * x_494);
  let x_496 : vec3<f32> = u_xlat7;
  let x_498 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_496.x, x_496.x, x_496.x) * vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat5;
  let x_503 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(x_503, x_503, x_503));
  let x_507 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_507) + 1.0f);
  let x_512 : f32 = u_xlat0.x;
  let x_514 : f32 = u_xlat0.x;
  u_xlat22 = (x_512 * x_514);
  let x_516 : f32 = u_xlat22;
  let x_517 : f32 = u_xlat22;
  u_xlat22 = (x_516 * x_517);
  let x_520 : f32 = u_xlat0.x;
  let x_521 : f32 = u_xlat22;
  u_xlat0.x = (x_520 * x_521);
  let x_524 : vec3<f32> = u_xlat6;
  u_xlat3 = (-(x_524) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_528 : vec3<f32> = u_xlat3;
  let x_529 : vec3<f32> = u_xlat0;
  let x_532 : vec3<f32> = u_xlat6;
  u_xlat3 = ((x_528 * vec3<f32>(x_529.x, x_529.x, x_529.x)) + x_532);
  let x_534 : vec3<f32> = u_xlat7;
  let x_535 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_534 * x_535);
  let x_539 : vec3<f32> = u_xlat2;
  let x_540 : vec3<f32> = u_xlat1;
  let x_542 : vec3<f32> = u_xlat0;
  let x_543 : vec3<f32> = ((x_539 * x_540) + x_542);
  let x_544 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

