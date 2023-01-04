struct PGlobals {
  x_Time : vec4<f32>,
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
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat24 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTextureB0 : sampler;

var<private> u_xlat25 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_189 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD1;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat22;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_57 : vec3<f32> = vs_TEXCOORD0;
  let x_58 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_57, x_58);
  let x_60 : f32 = u_xlat22;
  u_xlat22 = log2(x_60);
  let x_62 : f32 = u_xlat22;
  u_xlat22 = (x_62 * 0.100000001f);
  let x_65 : f32 = u_xlat22;
  u_xlat22 = exp2(x_65);
  let x_67 : f32 = u_xlat22;
  u_xlat22 = (-(x_67) + 1.0f);
  let x_71 : f32 = u_xlat22;
  u_xlat22 = max(x_71, 0.0f);
  let x_75 : f32 = u_xlat22;
  let x_79 : vec4<f32> = x_18.x_Color;
  u_xlat3 = (vec3<f32>(x_75, x_75, x_75) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_87 : f32 = x_18.x_Time.x;
  u_xlat22 = (x_87 * 200.0f);
  let x_90 : f32 = u_xlat22;
  u_xlat22 = sin(x_90);
  let x_92 : f32 = u_xlat22;
  u_xlat22 = (x_92 + 1.0f);
  let x_94 : f32 = u_xlat22;
  u_xlat22 = (x_94 * 0.5f);
  let x_98 : f32 = u_xlat22;
  let x_100 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : vec3<f32> = vs_TEXCOORD1;
  let x_107 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat5 = (vec3<f32>(x_103.y, x_103.y, x_103.y) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_111 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_113 : vec3<f32> = vs_TEXCOORD1;
  let x_116 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_111.x, x_111.y, x_111.z) * vec3<f32>(x_113.x, x_113.x, x_113.x)) + x_116);
  let x_119 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_121 : vec3<f32> = vs_TEXCOORD1;
  let x_124 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(x_121.z, x_121.z, x_121.z)) + x_124);
  let x_126 : vec3<f32> = u_xlat5;
  let x_129 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat5 = (x_126 + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_137 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_137 == 1.0f);
  let x_139 : bool = u_xlatb23;
  if (x_139) {
    let x_144 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_144 == 1.0f);
    let x_148 : vec3<f32> = vs_TEXCOORD1;
    let x_152 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_154 : vec3<f32> = (vec3<f32>(x_148.y, x_148.y, x_148.y) * vec3<f32>(x_152.x, x_152.y, x_152.z));
    let x_155 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
    let x_158 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_160 : vec3<f32> = vs_TEXCOORD1;
    let x_163 : vec4<f32> = u_xlat6;
    let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
    let x_166 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
    let x_169 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_171 : vec3<f32> = vs_TEXCOORD1;
    let x_174 : vec4<f32> = u_xlat6;
    let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.z, x_171.z, x_171.z)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_179 : vec4<f32> = u_xlat6;
    let x_182 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_184 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + vec3<f32>(x_182.x, x_182.y, x_182.z));
    let x_185 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : bool = u_xlatb23;
    if (x_187) {
      let x_192 : vec4<f32> = u_xlat6;
      x_189 = vec3<f32>(x_192.x, x_192.y, x_192.z);
    } else {
      let x_195 : vec3<f32> = vs_TEXCOORD1;
      x_189 = x_195;
    }
    let x_196 : vec3<f32> = x_189;
    let x_197 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat6;
    let x_203 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_205 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) + -(x_203));
    let x_206 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat6;
    let x_212 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_213 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) * x_212);
    let x_214 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_214.x, x_213.x, x_213.y, x_213.z);
    let x_218 : f32 = u_xlat6.y;
    u_xlat23 = ((x_218 * 0.25f) + 0.75f);
    let x_226 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_226 * 0.5f) + 0.75f);
    let x_229 : f32 = u_xlat23;
    let x_230 : f32 = u_xlat24;
    u_xlat6.x = max(x_229, x_230);
    let x_243 : vec4<f32> = u_xlat6;
    let x_245 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_243.x, x_243.z, x_243.w));
    u_xlat6 = x_245;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_252 : vec4<f32> = u_xlat6;
  let x_254 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_252, x_254);
  let x_256 : f32 = u_xlat23;
  u_xlat23 = clamp(x_256, 0.0f, 1.0f);
  let x_258 : vec3<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat5;
  u_xlat24 = dot(x_258, x_259);
  let x_269 : f32 = u_xlat24;
  let x_272 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_269, x_269));
  u_xlat24 = x_272.x;
  let x_283 : vec3<f32> = u_xlat5;
  let x_284 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_283);
  u_xlat25 = x_284.w;
  let x_286 : f32 = u_xlat24;
  let x_287 : f32 = u_xlat25;
  u_xlat24 = (x_286 * x_287);
  let x_289 : f32 = u_xlat23;
  let x_290 : f32 = u_xlat24;
  u_xlat23 = (x_289 * x_290);
  let x_292 : f32 = u_xlat23;
  let x_296 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_292, x_292, x_292) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec3<f32> = vs_TEXCOORD0;
  let x_300 : vec3<f32> = vs_TEXCOORD0;
  u_xlat23 = dot(x_299, x_300);
  let x_302 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_302);
  let x_304 : f32 = u_xlat23;
  let x_306 : vec3<f32> = vs_TEXCOORD0;
  let x_307 : vec3<f32> = (vec3<f32>(x_304, x_304, x_304) * x_306);
  let x_308 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec3<f32> = u_xlat3;
  let x_311 : f32 = u_xlat22;
  u_xlat3 = ((x_310 * vec3<f32>(x_311, x_311, x_311)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_319 : f32 = x_18.x_Metallic;
  let x_321 : f32 = x_18.x_Metallic;
  let x_323 : f32 = x_18.x_Metallic;
  let x_324 : vec3<f32> = vec3<f32>(x_319, x_321, x_323);
  let x_329 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * x_329) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_335 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_335) * 0.959999979f) + 0.959999979f);
  let x_340 : f32 = u_xlat22;
  let x_342 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_340, x_340, x_340) * x_342);
  let x_346 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_346) + 1.0f);
  let x_349 : vec3<f32> = u_xlat0;
  let x_350 : f32 = u_xlat21;
  let x_353 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_349 * vec3<f32>(x_350, x_350, x_350)) + x_353);
  let x_355 : vec3<f32> = u_xlat0;
  let x_356 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_355, x_356);
  let x_358 : f32 = u_xlat21;
  u_xlat21 = max(x_358, 0.001f);
  let x_361 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_361);
  let x_363 : f32 = u_xlat21;
  let x_365 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_363, x_363, x_363) * x_365);
  let x_367 : vec4<f32> = u_xlat6;
  let x_369 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), x_369);
  let x_371 : vec4<f32> = u_xlat6;
  let x_373 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_371.x, x_371.y, x_371.z), x_373);
  let x_377 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_377, 0.0f, 1.0f);
  let x_381 : vec4<f32> = u_xlat6;
  let x_383 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), x_383);
  let x_385 : f32 = u_xlat9;
  u_xlat9 = clamp(x_385, 0.0f, 1.0f);
  let x_387 : vec3<f32> = u_xlat1;
  let x_388 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_387, x_388);
  let x_392 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_392, 0.0f, 1.0f);
  let x_397 : f32 = u_xlat0.x;
  let x_399 : f32 = u_xlat0.x;
  u_xlat7.x = (x_397 * x_399);
  let x_402 : vec3<f32> = u_xlat7;
  let x_404 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_402.x, x_402.x), vec2<f32>(x_404, x_404));
  let x_409 : f32 = u_xlat7.x;
  u_xlat7.x = (x_409 + -0.5f);
  let x_415 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_415) + 1.0f);
  let x_418 : f32 = u_xlat14;
  let x_419 : f32 = u_xlat14;
  u_xlat1.x = (x_418 * x_419);
  let x_423 : f32 = u_xlat1.x;
  let x_425 : f32 = u_xlat1.x;
  u_xlat1.x = (x_423 * x_425);
  let x_428 : f32 = u_xlat14;
  let x_430 : f32 = u_xlat1.x;
  u_xlat14 = (x_428 * x_430);
  let x_433 : f32 = u_xlat7.x;
  let x_434 : f32 = u_xlat14;
  u_xlat14 = ((x_433 * x_434) + 1.0f);
  let x_437 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_437)) + 1.0f);
  let x_444 : f32 = u_xlat1.x;
  let x_446 : f32 = u_xlat1.x;
  u_xlat8 = (x_444 * x_446);
  let x_448 : f32 = u_xlat8;
  let x_449 : f32 = u_xlat8;
  u_xlat8 = (x_448 * x_449);
  let x_452 : f32 = u_xlat1.x;
  let x_453 : f32 = u_xlat8;
  u_xlat1.x = (x_452 * x_453);
  let x_457 : f32 = u_xlat7.x;
  let x_459 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_457 * x_459) + 1.0f);
  let x_464 : f32 = u_xlat7.x;
  let x_465 : f32 = u_xlat14;
  u_xlat7.x = (x_464 * x_465);
  let x_468 : f32 = u_xlat22;
  let x_469 : f32 = u_xlat22;
  u_xlat14 = (x_468 * x_469);
  let x_471 : f32 = u_xlat14;
  u_xlat14 = max(x_471, 0.002f);
  let x_474 : f32 = u_xlat14;
  u_xlat1.x = (-(x_474) + 1.0f);
  let x_478 : f32 = u_xlat21;
  let x_481 : f32 = u_xlat1.x;
  let x_483 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_478) * x_481) + x_483);
  let x_486 : f32 = u_xlat2.x;
  let x_488 : f32 = u_xlat1.x;
  let x_490 : f32 = u_xlat14;
  u_xlat1.x = ((x_486 * x_488) + x_490);
  let x_493 : f32 = u_xlat21;
  let x_496 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_493) * x_496);
  let x_499 : f32 = u_xlat2.x;
  let x_500 : f32 = u_xlat8;
  let x_502 : f32 = u_xlat21;
  u_xlat21 = ((x_499 * x_500) + x_502);
  let x_504 : f32 = u_xlat21;
  u_xlat21 = (x_504 + 0.00001f);
  let x_507 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_507);
  let x_509 : f32 = u_xlat14;
  let x_510 : f32 = u_xlat14;
  u_xlat14 = (x_509 * x_510);
  let x_512 : f32 = u_xlat9;
  let x_513 : f32 = u_xlat14;
  let x_515 : f32 = u_xlat9;
  u_xlat1.x = ((x_512 * x_513) + -(x_515));
  let x_520 : f32 = u_xlat1.x;
  let x_521 : f32 = u_xlat9;
  u_xlat1.x = ((x_520 * x_521) + 1.0f);
  let x_525 : f32 = u_xlat14;
  u_xlat14 = (x_525 * 0.318309873f);
  let x_529 : f32 = u_xlat1.x;
  let x_531 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_529 * x_531) + 0.0000001f);
  let x_536 : f32 = u_xlat14;
  let x_538 : f32 = u_xlat1.x;
  u_xlat14 = (x_536 / x_538);
  let x_540 : f32 = u_xlat14;
  let x_541 : f32 = u_xlat21;
  u_xlat7.y = (x_540 * x_541);
  let x_544 : vec3<f32> = u_xlat2;
  let x_546 : vec3<f32> = u_xlat7;
  let x_548 : vec2<f32> = (vec2<f32>(x_544.x, x_544.x) * vec2<f32>(x_546.x, x_546.y));
  let x_549 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_548.x, x_548.y, x_549.z);
  let x_552 : f32 = u_xlat7.y;
  u_xlat14 = (x_552 * 3.141592741f);
  let x_555 : f32 = u_xlat14;
  u_xlat14 = max(x_555, 0.0f);
  let x_557 : vec3<f32> = u_xlat3;
  let x_558 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_557, x_558);
  let x_561 : f32 = u_xlat21;
  u_xlatb21 = !((x_561 == 0.0f));
  let x_563 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_563);
  let x_565 : f32 = u_xlat21;
  let x_566 : f32 = u_xlat14;
  u_xlat14 = (x_565 * x_566);
  let x_568 : vec3<f32> = u_xlat7;
  let x_570 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_568.x, x_568.x, x_568.x) * x_570);
  let x_572 : vec3<f32> = u_xlat5;
  let x_573 : f32 = u_xlat14;
  u_xlat7 = (x_572 * vec3<f32>(x_573, x_573, x_573));
  let x_577 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_577) + 1.0f);
  let x_582 : f32 = u_xlat0.x;
  let x_584 : f32 = u_xlat0.x;
  u_xlat22 = (x_582 * x_584);
  let x_586 : f32 = u_xlat22;
  let x_587 : f32 = u_xlat22;
  u_xlat22 = (x_586 * x_587);
  let x_590 : f32 = u_xlat0.x;
  let x_591 : f32 = u_xlat22;
  u_xlat0.x = (x_590 * x_591);
  let x_594 : vec3<f32> = u_xlat3;
  u_xlat2 = (-(x_594) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_598 : vec3<f32> = u_xlat2;
  let x_599 : vec3<f32> = u_xlat0;
  let x_602 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_598 * vec3<f32>(x_599.x, x_599.x, x_599.x)) + x_602);
  let x_604 : vec3<f32> = u_xlat7;
  let x_605 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_604 * x_605);
  let x_609 : vec3<f32> = u_xlat4;
  let x_610 : vec3<f32> = u_xlat1;
  let x_612 : vec3<f32> = u_xlat0;
  let x_613 : vec3<f32> = ((x_609 * x_610) + x_612);
  let x_614 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

