struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat28 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb8 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat10 : f32;

var<private> u_xlat29 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec3<f32>;
  var x_311 : f32;
  var x_323 : f32;
  var x_335 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_ProjectionParams.z;
  let x_26 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_21 / x_26);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  let x_34 : vec3<f32> = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_41 : vec4<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = vs_TEXCOORD0;
  let x_45 : vec2<f32> = (vec2<f32>(x_41.x, x_41.y) / vec2<f32>(x_43.w, x_43.w));
  let x_46 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_45.x, x_45.y, x_46.z, x_46.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_59.x, x_59.y));
  u_xlat27 = x_61.x;
  let x_65 : f32 = x_14.x_ZBufferParams.x;
  let x_66 : f32 = u_xlat27;
  let x_70 : f32 = x_14.x_ZBufferParams.y;
  u_xlat27 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat27;
  u_xlat27 = (1.0f / x_73);
  let x_75 : f32 = u_xlat27;
  let x_77 : vec4<f32> = u_xlat0;
  let x_79 : vec3<f32> = (vec3<f32>(x_75, x_75, x_75) * vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_83 : vec4<f32> = u_xlat0;
  let x_88 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  let x_90 : vec3<f32> = (vec3<f32>(x_83.y, x_83.y, x_83.y) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_95 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_97 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec3<f32> = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_97.x, x_97.x, x_97.x)) + vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_102.z);
  let x_106 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_108 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.z, x_108.z, x_108.z)) + vec3<f32>(x_111.x, x_111.y, x_111.w));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_121 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_129.x, x_129.y));
  u_xlat27 = x_131.w;
  let x_139 : vec4<f32> = u_xlat1;
  let x_141 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_139.x, x_139.y));
  u_xlat2 = x_141;
  let x_147 : vec4<f32> = u_xlat1;
  let x_149 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_147.x, x_147.y));
  let x_150 : vec3<f32> = vec3<f32>(x_149.x, x_149.y, x_149.z);
  let x_151 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_153 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = u_xlat1;
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat28 = dot(vec3<f32>(x_164.x, x_164.y, x_164.z), vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_169);
  let x_171 : f32 = u_xlat28;
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec3<f32> = (vec3<f32>(x_171, x_171, x_171) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_180 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  u_xlat3 = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(x_184));
  let x_187 : vec3<f32> = u_xlat3;
  let x_188 : vec3<f32> = u_xlat3;
  u_xlat28 = dot(x_187, x_188);
  let x_190 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_190);
  let x_192 : f32 = u_xlat28;
  let x_194 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_192, x_192, x_192) * x_194);
  let x_197 : f32 = u_xlat2.y;
  let x_199 : f32 = u_xlat2.x;
  u_xlat28 = max(x_197, x_199);
  let x_202 : f32 = u_xlat2.z;
  let x_203 : f32 = u_xlat28;
  u_xlat28 = max(x_202, x_203);
  let x_205 : f32 = u_xlat28;
  u_xlat28 = (-(x_205) + 1.0f);
  let x_210 : f32 = u_xlat2.w;
  u_xlat30 = (-(x_210) + 1.0f);
  let x_214 : vec3<f32> = u_xlat3;
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_214, vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_220 : f32 = u_xlat4.x;
  let x_222 : f32 = u_xlat4.x;
  u_xlat4.x = (x_220 + x_222);
  let x_225 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = u_xlat4;
  let x_231 : vec3<f32> = u_xlat3;
  let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * -(vec3<f32>(x_227.x, x_227.x, x_227.x))) + x_231);
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_241 : f32 = x_14.unity_SpecCube0_ProbePosition.w;
  u_xlatb31 = (0.0f < x_241);
  let x_243 : bool = u_xlatb31;
  if (x_243) {
    let x_249 : vec4<f32> = x_14.unity_SpecCube0_BoxMin;
    let x_253 : vec4<f32> = x_14.unity_SpecCube1_ProbePosition;
    u_xlat5 = (vec3<f32>(x_249.x, x_249.y, x_249.z) + -(vec3<f32>(x_253.w, x_253.w, x_253.w)));
    let x_260 : vec4<f32> = x_14.unity_SpecCube0_BoxMax;
    let x_263 : vec4<f32> = x_14.unity_SpecCube1_ProbePosition;
    u_xlat6 = (vec3<f32>(x_260.x, x_260.y, x_260.z) + vec3<f32>(x_263.w, x_263.w, x_263.w));
    let x_267 : vec4<f32> = u_xlat4;
    let x_269 : vec4<f32> = u_xlat4;
    u_xlat31 = dot(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(x_269.x, x_269.y, x_269.z));
    let x_272 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_272);
    let x_275 : f32 = u_xlat31;
    let x_277 : vec4<f32> = u_xlat4;
    u_xlat7 = (vec3<f32>(x_275, x_275, x_275) * vec3<f32>(x_277.x, x_277.y, x_277.z));
    let x_280 : vec4<f32> = u_xlat0;
    let x_283 : vec3<f32> = u_xlat6;
    u_xlat6 = (-(vec3<f32>(x_280.x, x_280.y, x_280.z)) + x_283);
    let x_285 : vec3<f32> = u_xlat6;
    let x_286 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_285 / x_286);
    let x_288 : vec4<f32> = u_xlat0;
    let x_291 : vec3<f32> = u_xlat5;
    u_xlat5 = (-(vec3<f32>(x_288.x, x_288.y, x_288.z)) + x_291);
    let x_293 : vec3<f32> = u_xlat5;
    let x_294 : vec3<f32> = u_xlat7;
    u_xlat5 = (x_293 / x_294);
    let x_300 : vec3<f32> = u_xlat7;
    let x_303 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_300.x, x_300.y, x_300.z, x_300.x));
    u_xlatb8 = vec3<bool>(x_303.x, x_303.y, x_303.z);
    let x_307 : vec3<f32> = u_xlat5;
    hlslcc_movcTemp = x_307;
    let x_309 : bool = u_xlatb8.x;
    if (x_309) {
      let x_315 : f32 = u_xlat6.x;
      x_311 = x_315;
    } else {
      let x_318 : f32 = u_xlat5.x;
      x_311 = x_318;
    }
    let x_319 : f32 = x_311;
    hlslcc_movcTemp.x = x_319;
    let x_322 : bool = u_xlatb8.y;
    if (x_322) {
      let x_327 : f32 = u_xlat6.y;
      x_323 = x_327;
    } else {
      let x_330 : f32 = u_xlat5.y;
      x_323 = x_330;
    }
    let x_331 : f32 = x_323;
    hlslcc_movcTemp.y = x_331;
    let x_334 : bool = u_xlatb8.z;
    if (x_334) {
      let x_339 : f32 = u_xlat6.z;
      x_335 = x_339;
    } else {
      let x_342 : f32 = u_xlat5.z;
      x_335 = x_342;
    }
    let x_343 : f32 = x_335;
    hlslcc_movcTemp.z = x_343;
    let x_345 : vec3<f32> = hlslcc_movcTemp;
    u_xlat5 = x_345;
    let x_347 : f32 = u_xlat5.y;
    let x_349 : f32 = u_xlat5.x;
    u_xlat31 = min(x_347, x_349);
    let x_352 : f32 = u_xlat5.z;
    let x_353 : f32 = u_xlat31;
    u_xlat31 = min(x_352, x_353);
    let x_355 : vec4<f32> = u_xlat0;
    let x_358 : vec4<f32> = x_14.unity_SpecCube0_ProbePosition;
    u_xlat5 = (vec3<f32>(x_355.x, x_355.y, x_355.z) + -(vec3<f32>(x_358.x, x_358.y, x_358.z)));
    let x_362 : vec3<f32> = u_xlat7;
    let x_363 : f32 = u_xlat31;
    let x_366 : vec3<f32> = u_xlat5;
    let x_367 : vec3<f32> = ((x_362 * vec3<f32>(x_363, x_363, x_363)) + x_366);
    let x_368 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  }
  let x_370 : f32 = u_xlat30;
  u_xlat31 = ((-(x_370) * 0.699999988f) + 1.700000048f);
  let x_376 : f32 = u_xlat30;
  let x_377 : f32 = u_xlat31;
  u_xlat31 = (x_376 * x_377);
  let x_379 : f32 = u_xlat31;
  u_xlat31 = (x_379 * 6.0f);
  let x_390 : vec4<f32> = u_xlat4;
  let x_392 : f32 = u_xlat31;
  let x_393 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_390.x, x_390.y, x_390.z), x_392);
  u_xlat4 = x_393;
  let x_395 : f32 = u_xlat4.w;
  u_xlat31 = (x_395 + -1.0f);
  let x_399 : f32 = x_14.unity_SpecCube0_HDR.w;
  let x_400 : f32 = u_xlat31;
  u_xlat31 = ((x_399 * x_400) + 1.0f);
  let x_403 : f32 = u_xlat31;
  u_xlat31 = log2(x_403);
  let x_405 : f32 = u_xlat31;
  let x_407 : f32 = x_14.unity_SpecCube0_HDR.y;
  u_xlat31 = (x_405 * x_407);
  let x_409 : f32 = u_xlat31;
  u_xlat31 = exp2(x_409);
  let x_411 : f32 = u_xlat31;
  let x_413 : f32 = x_14.unity_SpecCube0_HDR.x;
  u_xlat31 = (x_411 * x_413);
  let x_415 : vec4<f32> = u_xlat4;
  let x_417 : f32 = u_xlat31;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417, x_417, x_417));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : f32 = u_xlat27;
  let x_424 : vec4<f32> = u_xlat4;
  let x_426 : vec3<f32> = (vec3<f32>(x_422, x_422, x_422) * vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), -(x_431));
  let x_434 : f32 = u_xlat30;
  let x_435 : f32 = u_xlat30;
  u_xlat1.x = (x_434 * x_435);
  let x_439 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_439, 0.002f);
  let x_444 : f32 = u_xlat1.x;
  let x_446 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_444 * x_446) + 1.0f);
  let x_451 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_451);
  let x_455 : f32 = u_xlat28;
  let x_458 : f32 = u_xlat2.w;
  u_xlat10 = (-(x_455) + x_458);
  let x_460 : f32 = u_xlat10;
  u_xlat10 = (x_460 + 1.0f);
  let x_462 : f32 = u_xlat10;
  u_xlat10 = clamp(x_462, 0.0f, 1.0f);
  let x_464 : vec4<f32> = u_xlat4;
  let x_466 : vec4<f32> = u_xlat1;
  let x_468 : vec3<f32> = (vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(x_466.x, x_466.x, x_466.x));
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_468.x, x_469.y, x_468.y, x_468.z);
  let x_471 : f32 = u_xlat27;
  u_xlat27 = (-(abs(x_471)) + 1.0f);
  let x_476 : f32 = u_xlat27;
  let x_477 : f32 = u_xlat27;
  u_xlat29 = (x_476 * x_477);
  let x_479 : f32 = u_xlat29;
  let x_480 : f32 = u_xlat29;
  u_xlat29 = (x_479 * x_480);
  let x_482 : f32 = u_xlat27;
  let x_483 : f32 = u_xlat29;
  u_xlat27 = (x_482 * x_483);
  let x_485 : vec4<f32> = u_xlat2;
  let x_488 : f32 = u_xlat10;
  u_xlat3 = (-(vec3<f32>(x_485.x, x_485.y, x_485.z)) + vec3<f32>(x_488, x_488, x_488));
  let x_491 : f32 = u_xlat27;
  let x_493 : vec3<f32> = u_xlat3;
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : vec3<f32> = ((vec3<f32>(x_491, x_491, x_491) * x_493) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec4<f32> = u_xlat2;
  let x_506 : vec3<f32> = (vec3<f32>(x_502.x, x_502.z, x_502.w) * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat0;
  let x_512 : vec4<f32> = x_14.unity_SpecCube0_BoxMax;
  let x_515 : vec3<f32> = (vec3<f32>(x_509.x, x_509.y, x_509.z) + -(vec3<f32>(x_512.x, x_512.y, x_512.z)));
  let x_516 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat0;
  let x_522 : vec4<f32> = x_14.unity_SpecCube0_BoxMin;
  let x_524 : vec3<f32> = (-(vec3<f32>(x_518.x, x_518.y, x_518.z)) + vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat0;
  let x_529 : vec4<f32> = u_xlat1;
  let x_531 : vec3<f32> = max(vec3<f32>(x_527.x, x_527.y, x_527.z), vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat0;
  let x_537 : vec3<f32> = max(vec3<f32>(x_534.x, x_534.y, x_534.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_538 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat0;
  let x_542 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_547 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_547);
  let x_551 : f32 = u_xlat0.x;
  let x_553 : f32 = x_14.unity_SpecCube1_ProbePosition.w;
  u_xlat0.x = (x_551 / x_553);
  let x_557 : f32 = u_xlat0.x;
  SV_Target0.w = (-(x_557) + 1.0f);
  let x_563 : f32 = SV_Target0.w;
  SV_Target0.w = clamp(x_563, 0.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

