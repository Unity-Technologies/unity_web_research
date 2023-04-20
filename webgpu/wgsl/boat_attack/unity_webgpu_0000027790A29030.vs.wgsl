diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_PrevViewProjMatrix : mat4x4<f32>,
  /* @offset(128) */
  x_NonJitteredViewProjMatrix : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_20 : UnityPerDraw;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> in_POSITION0 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat22 : f32;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_375 : VGlobals;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat23 : f32;

var<private> vs_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_NORMAL0;
  let x_26 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_13, vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_32 : vec3<f32> = in_NORMAL0;
  let x_34 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_32, vec3<f32>(x_34.x, x_34.y, x_34.z));
  let x_39 : vec3<f32> = in_NORMAL0;
  let x_42 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_39, vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_48 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat7.x = dot(vec3<f32>(x_48.x, x_48.y, x_48.z), vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_55 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_55, 1.17549435e-38f);
  let x_60 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_60);
  let x_64 : vec3<f32> = u_xlat7;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec2<f32> = (vec2<f32>(x_64.x, x_64.x) * vec2<f32>(x_66.x, x_66.z));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_69.z, x_69.w);
  let x_75 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat14 = (vec2<f32>(x_75.x, x_75.z) * vec2<f32>(2.0f, 0.25f));
  let x_82 : f32 = u_xlat14.y;
  let x_84 : f32 = u_xlat14.x;
  u_xlat14.x = (x_82 + x_84);
  let x_88 : f32 = u_xlat14.x;
  u_xlat14.x = sin(x_88);
  let x_92 : f32 = u_xlat14.x;
  u_xlat14.x = (x_92 + 1.0f);
  let x_96 : vec2<f32> = u_xlat14;
  u_xlat14 = (vec2<f32>(x_96.x, x_96.x) * vec2<f32>(-0.05000000074505805969f, -0.17499999701976776123f));
  let x_104 : vec3<f32> = in_POSITION0;
  let x_105 : vec3<f32> = in_POSITION0;
  u_xlat1.x = dot(x_104, x_105);
  let x_109 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_109);
  let x_113 : vec3<f32> = in_POSITION0;
  let x_116 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat8 = (vec3<f32>(x_113.y, x_113.y, x_113.y) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_120 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_122 : vec3<f32> = in_POSITION0;
  let x_125 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_120.x, x_120.y, x_120.z) * vec3<f32>(x_122.x, x_122.x, x_122.x)) + x_125);
  let x_128 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_130 : vec3<f32> = in_POSITION0;
  let x_133 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_128.x, x_128.y, x_128.z) * vec3<f32>(x_130.z, x_130.z, x_130.z)) + x_133);
  let x_135 : vec3<f32> = u_xlat8;
  let x_137 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat8 = (x_135 + vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_143 : f32 = in_POSITION0.y;
  u_xlat2.x = ((x_143 * 0.05000000074505805969f) + 1.0f);
  let x_149 : f32 = u_xlat2.x;
  let x_151 : f32 = u_xlat2.x;
  u_xlat2.x = (x_149 * x_151);
  let x_155 : f32 = u_xlat2.x;
  let x_157 : f32 = u_xlat2.x;
  let x_160 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_155 * x_157) + -(x_160));
  let x_164 : vec2<f32> = u_xlat14;
  let x_165 : vec4<f32> = u_xlat2;
  let x_167 : vec2<f32> = (x_164 * vec2<f32>(x_165.x, x_165.x));
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_168.y, x_167.y, x_168.w);
  u_xlat2.y = 0.0f;
  let x_172 : vec3<f32> = u_xlat8;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat8 = (x_172 + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec3<f32> = u_xlat8;
  let x_179 : vec4<f32> = x_20.unity_WorldToObject[1i];
  let x_181 : vec3<f32> = (vec3<f32>(x_176.y, x_176.y, x_176.y) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec4<f32> = x_20.unity_WorldToObject[0i];
  let x_187 : vec3<f32> = u_xlat8;
  let x_190 : vec4<f32> = u_xlat2;
  let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.x, x_187.x, x_187.x)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = x_20.unity_WorldToObject[2i];
  let x_198 : vec3<f32> = u_xlat8;
  let x_201 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.z, x_198.z, x_198.z)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec3<f32> = u_xlat8;
  let x_206 : vec4<f32> = x_20.unity_WorldToObject[3i];
  u_xlat8 = (x_204 + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec3<f32> = u_xlat8;
  let x_210 : vec3<f32> = u_xlat8;
  u_xlat2.x = dot(x_209, x_210);
  let x_214 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_214);
  let x_217 : vec3<f32> = u_xlat8;
  let x_218 : vec4<f32> = u_xlat2;
  u_xlat8 = (x_217 * vec3<f32>(x_218.x, x_218.x, x_218.x));
  let x_221 : vec3<f32> = u_xlat8;
  let x_222 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_221 * vec3<f32>(x_222.x, x_222.x, x_222.x));
  let x_227 : f32 = x_20.unity_ObjectToWorld[0i].y;
  u_xlat2.x = x_227;
  let x_230 : f32 = x_20.unity_ObjectToWorld[1i].y;
  u_xlat2.y = x_230;
  let x_233 : f32 = x_20.unity_ObjectToWorld[2i].y;
  u_xlat2.z = x_233;
  let x_236 : f32 = x_20.unity_ObjectToWorld[3i].y;
  u_xlat2.w = x_236;
  let x_240 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(x_240, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_246 : f32 = in_COLOR0.x;
  u_xlat2.x = (x_246 * 0.10000000149011611938f);
  let x_251 : f32 = in_COLOR0.y;
  let x_254 : f32 = u_xlat22;
  u_xlat22 = ((x_251 * 4.5f) + x_254);
  let x_257 : vec3<f32> = u_xlat1;
  let x_258 : f32 = u_xlat22;
  u_xlat3.x = dot(x_257, vec3<f32>(x_258, x_258, x_258));
  let x_263 : f32 = in_COLOR0.y;
  u_xlat3.y = x_263;
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_265.x, x_265.x, x_265.y, x_265.y) * vec4<f32>(3.95000004768371582031f, 1.38600003719329833984f, 2.47499990463256835938f, 1.27380001544952392578f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_276 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3 = fract(x_282);
  let x_284 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_284 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_289 : vec4<f32> = u_xlat3;
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat4 = (abs(x_289) * abs(x_291));
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat3 = ((-(abs(x_294)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_301 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_301 * x_302) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_308 : vec4<f32> = u_xlat3;
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat9 = (vec3<f32>(x_308.y, x_308.w, x_308.y) + vec3<f32>(x_310.x, x_310.z, x_310.x));
  let x_313 : vec4<f32> = u_xlat0;
  let x_315 : vec4<f32> = u_xlat2;
  let x_317 : vec2<f32> = (vec2<f32>(x_313.x, x_313.y) * vec2<f32>(x_315.x, x_315.x));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_317.x, x_318.y, x_317.y, x_318.w);
  let x_321 : f32 = in_COLOR0.z;
  u_xlat3.y = ((x_321 * -0.34999999403953552246f) + 0.34999999403953552246f);
  let x_327 : vec3<f32> = u_xlat9;
  let x_328 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_327 * vec3<f32>(x_328.x, x_328.y, x_328.z)) + x_331);
  let x_333 : vec3<f32> = u_xlat1;
  let x_336 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_338 : vec3<f32> = (vec3<f32>(x_333.y, x_333.y, x_333.y) * vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_344 : vec3<f32> = u_xlat1;
  let x_347 : vec4<f32> = u_xlat2;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.x, x_344.x)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_355 : vec3<f32> = u_xlat1;
  let x_358 : vec4<f32> = u_xlat2;
  let x_360 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355.z, x_355.z, x_355.z)) + vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_361 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat2;
  let x_366 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_368 : vec3<f32> = (vec3<f32>(x_363.x, x_363.y, x_363.z) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat2;
  let x_377 : vec4<f32> = x_375.unity_MatrixVP[1i];
  u_xlat4 = (vec4<f32>(x_371.y, x_371.y, x_371.y, x_371.y) * x_377);
  let x_380 : vec4<f32> = x_375.unity_MatrixVP[0i];
  let x_381 : vec4<f32> = u_xlat2;
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_380 * vec4<f32>(x_381.x, x_381.x, x_381.x, x_381.x)) + x_384);
  let x_387 : vec4<f32> = x_375.unity_MatrixVP[2i];
  let x_388 : vec4<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_387 * vec4<f32>(x_388.z, x_388.z, x_388.z, x_388.z)) + x_391);
  let x_393 : vec4<f32> = u_xlat4;
  let x_395 : vec4<f32> = x_375.unity_MatrixVP[3i];
  u_xlat4 = (x_393 + x_395);
  let x_403 : f32 = x_20.unity_MotionVectorsParams.z;
  let x_406 : f32 = u_xlat4.w;
  let x_409 : f32 = u_xlat4.z;
  gl_Position.z = ((-(x_403) * x_406) + x_409);
  let x_417 : f32 = x_20.unity_MotionVectorsParams.y;
  u_xlatb0 = !((x_417 == 0.0f));
  let x_419 : bool = u_xlatb0;
  if (x_419) {
    let x_423 : f32 = x_20.unity_MotionVectorsParams.x;
    u_xlatb0 = (x_423 == 1.0f);
    let x_425 : bool = u_xlatb0;
    if (x_425) {
      let x_429 : vec3<f32> = in_TEXCOORD4;
      let x_430 : vec3<f32> = in_TEXCOORD4;
      u_xlat0.x = dot(x_429, x_430);
      let x_434 : f32 = u_xlat0.x;
      u_xlat0.x = sqrt(x_434);
      let x_438 : vec3<f32> = in_TEXCOORD4;
      let x_441 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
      let x_443 : vec3<f32> = (vec3<f32>(x_438.y, x_438.y, x_438.y) * vec3<f32>(x_441.x, x_441.y, x_441.z));
      let x_444 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
      let x_447 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
      let x_449 : vec3<f32> = in_TEXCOORD4;
      let x_452 : vec4<f32> = u_xlat5;
      let x_454 : vec3<f32> = ((vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_449.x, x_449.x, x_449.x)) + vec3<f32>(x_452.x, x_452.y, x_452.z));
      let x_455 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
      let x_458 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
      let x_460 : vec3<f32> = in_TEXCOORD4;
      let x_463 : vec4<f32> = u_xlat5;
      let x_465 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460.z, x_460.z, x_460.z)) + vec3<f32>(x_463.x, x_463.y, x_463.z));
      let x_466 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
      let x_468 : vec4<f32> = u_xlat5;
      let x_471 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
      let x_473 : vec3<f32> = (vec3<f32>(x_468.x, x_468.y, x_468.z) + vec3<f32>(x_471.x, x_471.y, x_471.z));
      let x_474 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
      let x_477 : f32 = in_TEXCOORD4.y;
      u_xlat7.x = ((x_477 * 0.05000000074505805969f) + 1.0f);
      let x_482 : f32 = u_xlat7.x;
      let x_484 : f32 = u_xlat7.x;
      u_xlat7.x = (x_482 * x_484);
      let x_488 : f32 = u_xlat7.x;
      let x_490 : f32 = u_xlat7.x;
      let x_493 : f32 = u_xlat7.x;
      u_xlat7.x = ((x_488 * x_490) + -(x_493));
      let x_498 : vec2<f32> = u_xlat14;
      let x_499 : vec3<f32> = u_xlat7;
      let x_501 : vec2<f32> = (x_498 * vec2<f32>(x_499.x, x_499.x));
      let x_502 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_501.x, x_502.y, x_501.y, x_502.w);
      u_xlat6.y = 0.0f;
      let x_505 : vec4<f32> = u_xlat5;
      let x_507 : vec4<f32> = u_xlat6;
      u_xlat7 = (vec3<f32>(x_505.x, x_505.y, x_505.z) + vec3<f32>(x_507.x, x_507.y, x_507.z));
      let x_510 : vec3<f32> = u_xlat7;
      let x_513 : vec4<f32> = x_20.unity_WorldToObject[1i];
      let x_515 : vec3<f32> = (vec3<f32>(x_510.y, x_510.y, x_510.y) * vec3<f32>(x_513.x, x_513.y, x_513.z));
      let x_516 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
      let x_519 : vec4<f32> = x_20.unity_WorldToObject[0i];
      let x_521 : vec3<f32> = u_xlat7;
      let x_524 : vec4<f32> = u_xlat5;
      let x_526 : vec3<f32> = ((vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(x_521.x, x_521.x, x_521.x)) + vec3<f32>(x_524.x, x_524.y, x_524.z));
      let x_527 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
      let x_530 : vec4<f32> = x_20.unity_WorldToObject[2i];
      let x_532 : vec3<f32> = u_xlat7;
      let x_535 : vec4<f32> = u_xlat5;
      u_xlat7 = ((vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(x_532.z, x_532.z, x_532.z)) + vec3<f32>(x_535.x, x_535.y, x_535.z));
      let x_538 : vec3<f32> = u_xlat7;
      let x_540 : vec4<f32> = x_20.unity_WorldToObject[3i];
      u_xlat7 = (x_538 + vec3<f32>(x_540.x, x_540.y, x_540.z));
      let x_544 : vec3<f32> = u_xlat7;
      let x_545 : vec3<f32> = u_xlat7;
      u_xlat23 = dot(x_544, x_545);
      let x_547 : f32 = u_xlat23;
      u_xlat23 = inverseSqrt(x_547);
      let x_549 : vec3<f32> = u_xlat7;
      let x_550 : f32 = u_xlat23;
      u_xlat7 = (x_549 * vec3<f32>(x_550, x_550, x_550));
      let x_553 : vec3<f32> = u_xlat7;
      let x_554 : vec4<f32> = u_xlat0;
      let x_556 : vec3<f32> = (x_553 * vec3<f32>(x_554.x, x_554.x, x_554.x));
      let x_557 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
      let x_559 : vec4<f32> = u_xlat0;
      let x_561 : f32 = u_xlat22;
      u_xlat5.x = dot(vec3<f32>(x_559.x, x_559.y, x_559.z), vec3<f32>(x_561, x_561, x_561));
      let x_566 : f32 = in_COLOR0.y;
      u_xlat5.y = x_566;
      let x_568 : vec4<f32> = u_xlat5;
      u_xlat5 = ((vec4<f32>(x_568.x, x_568.x, x_568.y, x_568.y) * vec4<f32>(3.95000004768371582031f, 1.38600003719329833984f, 2.47499990463256835938f, 1.27380001544952392578f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
      let x_572 : vec4<f32> = u_xlat5;
      u_xlat5 = ((x_572 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
      let x_575 : vec4<f32> = u_xlat5;
      u_xlat5 = fract(x_575);
      let x_577 : vec4<f32> = u_xlat5;
      u_xlat5 = ((x_577 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
      let x_580 : vec4<f32> = u_xlat5;
      let x_582 : vec4<f32> = u_xlat5;
      u_xlat6 = (abs(x_580) * abs(x_582));
      let x_585 : vec4<f32> = u_xlat5;
      u_xlat5 = ((-(abs(x_585)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
      let x_590 : vec4<f32> = u_xlat6;
      let x_591 : vec4<f32> = u_xlat5;
      u_xlat5 = ((x_590 * x_591) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
      let x_594 : vec4<f32> = u_xlat5;
      let x_596 : vec4<f32> = u_xlat5;
      let x_598 : vec3<f32> = (vec3<f32>(x_594.y, x_594.w, x_594.y) + vec3<f32>(x_596.x, x_596.z, x_596.x));
      let x_599 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
      let x_601 : vec4<f32> = u_xlat5;
      let x_603 : vec4<f32> = u_xlat3;
      let x_606 : vec4<f32> = u_xlat0;
      u_xlat1 = ((vec3<f32>(x_601.x, x_601.y, x_601.z) * vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
    }
    let x_609 : vec4<f32> = u_xlat2;
    let x_612 : vec4<f32> = x_375.x_NonJitteredViewProjMatrix[1i];
    let x_614 : vec3<f32> = (vec3<f32>(x_609.y, x_609.y, x_609.y) * vec3<f32>(x_612.x, x_612.y, x_612.w));
    let x_615 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
    let x_618 : vec4<f32> = x_375.x_NonJitteredViewProjMatrix[0i];
    let x_620 : vec4<f32> = u_xlat2;
    let x_623 : vec4<f32> = u_xlat0;
    let x_625 : vec3<f32> = ((vec3<f32>(x_618.x, x_618.y, x_618.w) * vec3<f32>(x_620.x, x_620.x, x_620.x)) + vec3<f32>(x_623.x, x_623.y, x_623.z));
    let x_626 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
    let x_629 : vec4<f32> = x_375.x_NonJitteredViewProjMatrix[2i];
    let x_631 : vec4<f32> = u_xlat2;
    let x_634 : vec4<f32> = u_xlat0;
    let x_636 : vec3<f32> = ((vec3<f32>(x_629.x, x_629.y, x_629.w) * vec3<f32>(x_631.z, x_631.z, x_631.z)) + vec3<f32>(x_634.x, x_634.y, x_634.z));
    let x_637 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
    let x_641 : vec4<f32> = u_xlat0;
    let x_644 : vec4<f32> = x_375.x_NonJitteredViewProjMatrix[3i];
    vs_CLIP_POSITION_NO_JITTER0 = (vec3<f32>(x_641.x, x_641.y, x_641.z) + vec3<f32>(x_644.x, x_644.y, x_644.w));
    let x_647 : vec3<f32> = u_xlat1;
    let x_651 : vec4<f32> = x_20.unity_MatrixPreviousM[1i];
    u_xlat0 = (vec4<f32>(x_647.y, x_647.y, x_647.y, x_647.y) * x_651);
    let x_654 : vec4<f32> = x_20.unity_MatrixPreviousM[0i];
    let x_655 : vec3<f32> = u_xlat1;
    let x_658 : vec4<f32> = u_xlat0;
    u_xlat0 = ((x_654 * vec4<f32>(x_655.x, x_655.x, x_655.x, x_655.x)) + x_658);
    let x_661 : vec4<f32> = x_20.unity_MatrixPreviousM[2i];
    let x_662 : vec3<f32> = u_xlat1;
    let x_665 : vec4<f32> = u_xlat0;
    u_xlat0 = ((x_661 * vec4<f32>(x_662.z, x_662.z, x_662.z, x_662.z)) + x_665);
    let x_667 : vec4<f32> = u_xlat0;
    let x_669 : vec4<f32> = x_20.unity_MatrixPreviousM[3i];
    u_xlat0 = (x_667 + x_669);
    let x_671 : vec4<f32> = u_xlat0;
    let x_674 : vec4<f32> = x_375.x_PrevViewProjMatrix[1i];
    u_xlat1 = (vec3<f32>(x_671.y, x_671.y, x_671.y) * vec3<f32>(x_674.x, x_674.y, x_674.w));
    let x_678 : vec4<f32> = x_375.x_PrevViewProjMatrix[0i];
    let x_680 : vec4<f32> = u_xlat0;
    let x_683 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_678.x, x_678.y, x_678.w) * vec3<f32>(x_680.x, x_680.x, x_680.x)) + x_683);
    let x_686 : vec4<f32> = x_375.x_PrevViewProjMatrix[2i];
    let x_688 : vec4<f32> = u_xlat0;
    let x_691 : vec3<f32> = u_xlat1;
    let x_692 : vec3<f32> = ((vec3<f32>(x_686.x, x_686.y, x_686.w) * vec3<f32>(x_688.z, x_688.z, x_688.z)) + x_691);
    let x_693 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
    let x_697 : vec4<f32> = x_375.x_PrevViewProjMatrix[3i];
    let x_699 : vec4<f32> = u_xlat0;
    let x_702 : vec4<f32> = u_xlat0;
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = ((vec3<f32>(x_697.x, x_697.y, x_697.w) * vec3<f32>(x_699.w, x_699.w, x_699.w)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
  } else {
    vs_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
  }
  let x_707 : vec4<f32> = u_xlat4;
  let x_708 : vec3<f32> = vec3<f32>(x_707.x, x_707.y, x_707.w);
  let x_711 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_708.x, x_708.y, x_711.z, x_708.z);
  let x_715 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP0 = x_715;
  let x_717 : vec4<f32> = u_xlat2;
  vs_INTERP1 = vec3<f32>(x_717.x, x_717.y, x_717.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_CLIP_POSITION_NO_JITTER0_1 : vec3<f32>,
  @location(1)
  vs_PREVIOUS_CLIP_POSITION_NO_JITTER0_1 : vec3<f32>,
  @location(2)
  vs_INTERP0_1 : vec4<f32>,
  @location(3)
  vs_INTERP1_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(4) in_TEXCOORD4_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_CLIP_POSITION_NO_JITTER0, vs_PREVIOUS_CLIP_POSITION_NO_JITTER0, vs_INTERP0, vs_INTERP1);
}


