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
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(3) var sampler_Gradient : sampler;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb19 : bool;
  var x_163 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlat20 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_40 : f32 = vs_TEXCOORD3;
  u_xlat19 = (x_40 + -1.0f);
  let x_43 : f32 = u_xlat19;
  u_xlat19 = (x_43 * -9.999998093f);
  let x_46 : f32 = u_xlat19;
  u_xlat19 = clamp(x_46, 0.0f, 1.0f);
  let x_52 : f32 = u_xlat19;
  let x_58 : vec2<f32> = vs_TEXCOORD0;
  let x_59 : vec2<f32> = (-(vec2<f32>(x_52, x_52)) + x_58);
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_59.x, x_59.y, x_60.z, x_60.w);
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_72.x, x_72.y));
  u_xlat19 = x_74.x;
  let x_81 : vec2<f32> = vs_TEXCOORD0;
  let x_82 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_81);
  u_xlat2.x = x_82.z;
  let x_86 : f32 = u_xlat19;
  u_xlat19 = ((x_86 * -2.0f) + 1.0f);
  let x_91 : f32 = u_xlat2.x;
  let x_93 : f32 = u_xlat19;
  u_xlat19 = (-(x_91) + x_93);
  let x_98 : f32 = u_xlat19;
  u_xlatb19 = (x_98 < 0.0f);
  let x_100 : bool = u_xlatb19;
  if (((select(0i, 1i, x_100) * -1i) != 0i)) {
    discard;
  }
  let x_112 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_112 == 1.0f);
  let x_114 : bool = u_xlatb19;
  if (x_114) {
    let x_119 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_119 == 1.0f);
    let x_121 : vec3<f32> = vs_TEXCOORD2;
    let x_126 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_128 : vec3<f32> = (vec3<f32>(x_121.y, x_121.y, x_121.y) * vec3<f32>(x_126.x, x_126.y, x_126.z));
    let x_129 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
    let x_132 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_134 : vec3<f32> = vs_TEXCOORD2;
    let x_137 : vec4<f32> = u_xlat2;
    let x_139 : vec3<f32> = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.x, x_134.x, x_134.x)) + vec3<f32>(x_137.x, x_137.y, x_137.z));
    let x_140 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
    let x_144 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_146 : vec3<f32> = vs_TEXCOORD2;
    let x_149 : vec4<f32> = u_xlat2;
    let x_151 : vec3<f32> = ((vec3<f32>(x_144.x, x_144.y, x_144.z) * vec3<f32>(x_146.z, x_146.z, x_146.z)) + vec3<f32>(x_149.x, x_149.y, x_149.z));
    let x_152 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
    let x_154 : vec4<f32> = u_xlat2;
    let x_157 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_159 : vec3<f32> = (vec3<f32>(x_154.x, x_154.y, x_154.z) + vec3<f32>(x_157.x, x_157.y, x_157.z));
    let x_160 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_162 : bool = u_xlatb19;
    if (x_162) {
      let x_166 : vec4<f32> = u_xlat2;
      x_163 = vec3<f32>(x_166.x, x_166.y, x_166.z);
    } else {
      let x_169 : vec3<f32> = vs_TEXCOORD2;
      x_163 = x_169;
    }
    let x_170 : vec3<f32> = x_163;
    let x_171 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_173 : vec4<f32> = u_xlat2;
    let x_177 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_179 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + -(x_177));
    let x_180 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat2;
    let x_186 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_187 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) * x_186);
    let x_188 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_188.x, x_187.x, x_187.y, x_187.z);
    let x_191 : f32 = u_xlat2.y;
    u_xlat19 = ((x_191 * 0.25f) + 0.75f);
    let x_198 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat8 = ((x_198 * 0.5f) + 0.75f);
    let x_202 : f32 = u_xlat19;
    let x_203 : f32 = u_xlat8;
    u_xlat2.x = max(x_202, x_203);
    let x_214 : vec4<f32> = u_xlat2;
    let x_216 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_214.x, x_214.z, x_214.w));
    u_xlat2 = x_216;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_223 : vec4<f32> = u_xlat2;
  let x_225 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_223, x_225);
  let x_227 : f32 = u_xlat19;
  u_xlat19 = clamp(x_227, 0.0f, 1.0f);
  let x_229 : f32 = u_xlat19;
  let x_233 : vec4<f32> = x_18.x_LightColor0;
  let x_235 : vec3<f32> = (vec3<f32>(x_229, x_229, x_229) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_240 : vec3<f32> = vs_TEXCOORD1;
  u_xlat19 = dot(x_239, x_240);
  let x_242 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_242);
  let x_245 : f32 = u_xlat19;
  let x_247 : vec3<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_245, x_245, x_245) * x_247);
  let x_252 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_259 : f32 = x_18.x_Metallic;
  let x_261 : f32 = x_18.x_Metallic;
  let x_263 : f32 = x_18.x_Metallic;
  let x_264 : vec3<f32> = vec3<f32>(x_259, x_261, x_263);
  let x_269 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_264.x, x_264.y, x_264.z) * x_269) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_275 : f32 = x_18.x_Metallic;
  u_xlat19 = ((-(x_275) * 0.959999979f) + 0.959999979f);
  let x_281 : f32 = u_xlat19;
  let x_284 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_281, x_281, x_281) * vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_289 : f32 = x_18.x_Glossiness;
  u_xlat19 = (-(x_289) + 1.0f);
  let x_292 : vec3<f32> = u_xlat0;
  let x_293 : f32 = u_xlat18;
  let x_297 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_292 * vec3<f32>(x_293, x_293, x_293)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec3<f32> = u_xlat0;
  let x_301 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_300, x_301);
  let x_303 : f32 = u_xlat18;
  u_xlat18 = max(x_303, 0.001f);
  let x_306 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_306);
  let x_308 : f32 = u_xlat18;
  let x_310 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_308, x_308, x_308) * x_310);
  let x_312 : vec3<f32> = u_xlat3;
  let x_313 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_312, x_313);
  let x_315 : vec3<f32> = u_xlat3;
  let x_317 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_315, vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_322 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_322, 0.0f, 1.0f);
  let x_326 : vec3<f32> = u_xlat3;
  let x_327 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_326, x_327);
  let x_329 : f32 = u_xlat7;
  u_xlat7 = clamp(x_329, 0.0f, 1.0f);
  let x_332 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_334 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), x_334);
  let x_338 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_338, 0.0f, 1.0f);
  let x_343 : f32 = u_xlat0.x;
  let x_345 : f32 = u_xlat0.x;
  u_xlat6.x = (x_343 * x_345);
  let x_348 : vec3<f32> = u_xlat6;
  let x_350 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_348.x, x_348.x), vec2<f32>(x_350, x_350));
  let x_355 : f32 = u_xlat6.x;
  u_xlat6.x = (x_355 + -0.5f);
  let x_361 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_361) + 1.0f);
  let x_365 : f32 = u_xlat12;
  let x_366 : f32 = u_xlat12;
  u_xlat13 = (x_365 * x_366);
  let x_368 : f32 = u_xlat13;
  let x_369 : f32 = u_xlat13;
  u_xlat13 = (x_368 * x_369);
  let x_371 : f32 = u_xlat12;
  let x_372 : f32 = u_xlat13;
  u_xlat12 = (x_371 * x_372);
  let x_375 : f32 = u_xlat6.x;
  let x_376 : f32 = u_xlat12;
  u_xlat12 = ((x_375 * x_376) + 1.0f);
  let x_379 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_379)) + 1.0f);
  let x_384 : f32 = u_xlat13;
  let x_385 : f32 = u_xlat13;
  u_xlat20 = (x_384 * x_385);
  let x_387 : f32 = u_xlat20;
  let x_388 : f32 = u_xlat20;
  u_xlat20 = (x_387 * x_388);
  let x_390 : f32 = u_xlat13;
  let x_391 : f32 = u_xlat20;
  u_xlat13 = (x_390 * x_391);
  let x_394 : f32 = u_xlat6.x;
  let x_395 : f32 = u_xlat13;
  u_xlat6.x = ((x_394 * x_395) + 1.0f);
  let x_400 : f32 = u_xlat6.x;
  let x_401 : f32 = u_xlat12;
  u_xlat6.x = (x_400 * x_401);
  let x_404 : f32 = u_xlat19;
  let x_405 : f32 = u_xlat19;
  u_xlat12 = (x_404 * x_405);
  let x_407 : f32 = u_xlat12;
  u_xlat12 = max(x_407, 0.002f);
  let x_410 : f32 = u_xlat12;
  u_xlat13 = (-(x_410) + 1.0f);
  let x_413 : f32 = u_xlat18;
  let x_415 : f32 = u_xlat13;
  let x_417 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_413) * x_415) + x_417);
  let x_420 : f32 = u_xlat1.x;
  let x_421 : f32 = u_xlat13;
  let x_423 : f32 = u_xlat12;
  u_xlat13 = ((x_420 * x_421) + x_423);
  let x_425 : f32 = u_xlat18;
  let x_427 : f32 = u_xlat13;
  u_xlat18 = (abs(x_425) * x_427);
  let x_430 : f32 = u_xlat1.x;
  let x_431 : f32 = u_xlat19;
  let x_433 : f32 = u_xlat18;
  u_xlat18 = ((x_430 * x_431) + x_433);
  let x_435 : f32 = u_xlat18;
  u_xlat18 = (x_435 + 0.00001f);
  let x_438 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_438);
  let x_440 : f32 = u_xlat12;
  let x_441 : f32 = u_xlat12;
  u_xlat12 = (x_440 * x_441);
  let x_443 : f32 = u_xlat7;
  let x_444 : f32 = u_xlat12;
  let x_446 : f32 = u_xlat7;
  u_xlat13 = ((x_443 * x_444) + -(x_446));
  let x_449 : f32 = u_xlat13;
  let x_450 : f32 = u_xlat7;
  u_xlat7 = ((x_449 * x_450) + 1.0f);
  let x_453 : f32 = u_xlat12;
  u_xlat12 = (x_453 * 0.318309873f);
  let x_456 : f32 = u_xlat7;
  let x_457 : f32 = u_xlat7;
  u_xlat7 = ((x_456 * x_457) + 0.0000001f);
  let x_461 : f32 = u_xlat12;
  let x_462 : f32 = u_xlat7;
  u_xlat12 = (x_461 / x_462);
  let x_464 : f32 = u_xlat12;
  let x_465 : f32 = u_xlat18;
  u_xlat6.y = (x_464 * x_465);
  let x_468 : vec3<f32> = u_xlat1;
  let x_470 : vec3<f32> = u_xlat6;
  let x_472 : vec2<f32> = (vec2<f32>(x_468.x, x_468.x) * vec2<f32>(x_470.x, x_470.y));
  let x_473 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_472.x, x_472.y, x_473.z);
  let x_476 : f32 = u_xlat6.y;
  u_xlat12 = (x_476 * 3.141592741f);
  let x_479 : f32 = u_xlat12;
  u_xlat12 = max(x_479, 0.0f);
  let x_481 : vec3<f32> = u_xlat4;
  let x_482 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_481, x_482);
  let x_485 : f32 = u_xlat18;
  u_xlatb18 = !((x_485 == 0.0f));
  let x_487 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_487);
  let x_489 : f32 = u_xlat18;
  let x_490 : f32 = u_xlat12;
  u_xlat12 = (x_489 * x_490);
  let x_492 : vec3<f32> = u_xlat6;
  let x_494 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_492.x, x_492.x, x_492.x) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat2;
  let x_499 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(x_499, x_499, x_499));
  let x_503 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_503) + 1.0f);
  let x_508 : f32 = u_xlat0.x;
  let x_510 : f32 = u_xlat0.x;
  u_xlat19 = (x_508 * x_510);
  let x_512 : f32 = u_xlat19;
  let x_513 : f32 = u_xlat19;
  u_xlat19 = (x_512 * x_513);
  let x_516 : f32 = u_xlat0.x;
  let x_517 : f32 = u_xlat19;
  u_xlat0.x = (x_516 * x_517);
  let x_520 : vec3<f32> = u_xlat4;
  let x_523 : vec3<f32> = (-(x_520) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat2;
  let x_528 : vec3<f32> = u_xlat0;
  let x_531 : vec3<f32> = u_xlat4;
  let x_532 : vec3<f32> = ((vec3<f32>(x_526.x, x_526.y, x_526.z) * vec3<f32>(x_528.x, x_528.x, x_528.x)) + x_531);
  let x_533 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : vec3<f32> = u_xlat6;
  let x_536 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_535 * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_541 : vec3<f32> = u_xlat5;
  let x_542 : vec3<f32> = u_xlat1;
  let x_544 : vec3<f32> = u_xlat0;
  let x_545 : vec3<f32> = ((x_541 * x_542) + x_544);
  let x_546 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

