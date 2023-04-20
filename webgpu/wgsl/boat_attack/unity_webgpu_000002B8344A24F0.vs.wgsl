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
  x_TimeParameters : vec4<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(80) */
  x_PrevViewProjMatrix : mat4x4<f32>,
  /* @offset(144) */
  x_NonJitteredViewProjMatrix : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_20 : UnityPerDraw;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_91 : VGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> in_POSITION0 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

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
  let x_94 : f32 = x_91.x_TimeParameters.x;
  u_xlat14.x = (x_88 + x_94);
  let x_98 : f32 = u_xlat14.x;
  u_xlat14.x = sin(x_98);
  let x_102 : f32 = u_xlat14.x;
  u_xlat14.x = (x_102 + 1.0f);
  let x_106 : vec2<f32> = u_xlat14;
  u_xlat14 = (vec2<f32>(x_106.x, x_106.x) * vec2<f32>(-0.05000000074505805969f, -0.17499999701976776123f));
  let x_114 : vec3<f32> = in_POSITION0;
  let x_115 : vec3<f32> = in_POSITION0;
  u_xlat1.x = dot(x_114, x_115);
  let x_119 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_119);
  let x_123 : vec3<f32> = in_POSITION0;
  let x_126 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat8 = (vec3<f32>(x_123.y, x_123.y, x_123.y) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_132 : vec3<f32> = in_POSITION0;
  let x_135 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_130.x, x_130.y, x_130.z) * vec3<f32>(x_132.x, x_132.x, x_132.x)) + x_135);
  let x_138 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_140 : vec3<f32> = in_POSITION0;
  let x_143 : vec3<f32> = u_xlat8;
  u_xlat8 = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_140.z, x_140.z, x_140.z)) + x_143);
  let x_145 : vec3<f32> = u_xlat8;
  let x_147 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat8 = (x_145 + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_153 : f32 = in_POSITION0.y;
  u_xlat2.x = ((x_153 * 0.05000000074505805969f) + 1.0f);
  let x_159 : f32 = u_xlat2.x;
  let x_161 : f32 = u_xlat2.x;
  u_xlat2.x = (x_159 * x_161);
  let x_165 : f32 = u_xlat2.x;
  let x_167 : f32 = u_xlat2.x;
  let x_170 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_165 * x_167) + -(x_170));
  let x_174 : vec2<f32> = u_xlat14;
  let x_175 : vec4<f32> = u_xlat2;
  let x_177 : vec2<f32> = (x_174 * vec2<f32>(x_175.x, x_175.x));
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_177.x, x_178.y, x_177.y, x_178.w);
  u_xlat2.y = 0.0f;
  let x_182 : vec3<f32> = u_xlat8;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat8 = (x_182 + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec3<f32> = u_xlat8;
  let x_189 : vec4<f32> = x_20.unity_WorldToObject[1i];
  let x_191 : vec3<f32> = (vec3<f32>(x_186.y, x_186.y, x_186.y) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_195 : vec4<f32> = x_20.unity_WorldToObject[0i];
  let x_197 : vec3<f32> = u_xlat8;
  let x_200 : vec4<f32> = u_xlat2;
  let x_202 : vec3<f32> = ((vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.x, x_197.x, x_197.x)) + vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : vec4<f32> = x_20.unity_WorldToObject[2i];
  let x_208 : vec3<f32> = u_xlat8;
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.z, x_208.z, x_208.z)) + vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_214 : vec3<f32> = u_xlat8;
  let x_216 : vec4<f32> = x_20.unity_WorldToObject[3i];
  u_xlat8 = (x_214 + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec3<f32> = u_xlat8;
  let x_220 : vec3<f32> = u_xlat8;
  u_xlat2.x = dot(x_219, x_220);
  let x_224 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_224);
  let x_227 : vec3<f32> = u_xlat8;
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat8 = (x_227 * vec3<f32>(x_228.x, x_228.x, x_228.x));
  let x_231 : vec3<f32> = u_xlat8;
  let x_232 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_231 * vec3<f32>(x_232.x, x_232.x, x_232.x));
  let x_236 : f32 = x_20.unity_ObjectToWorld[0i].y;
  u_xlat2.x = x_236;
  let x_239 : f32 = x_20.unity_ObjectToWorld[1i].y;
  u_xlat2.y = x_239;
  let x_242 : f32 = x_20.unity_ObjectToWorld[2i].y;
  u_xlat2.z = x_242;
  let x_245 : f32 = x_20.unity_ObjectToWorld[3i].y;
  u_xlat2.w = x_245;
  let x_249 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(x_249, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_255 : vec4<f32> = in_COLOR0;
  let x_260 : vec2<f32> = (vec2<f32>(x_255.x, x_255.y) * vec2<f32>(0.10000000149011611938f, 3.29999995231628417969f));
  let x_261 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_260.x, x_261.y, x_260.y);
  let x_264 : f32 = in_COLOR0.y;
  let x_267 : f32 = u_xlat22;
  u_xlat22 = ((x_264 * 4.5f) + x_267);
  let x_269 : vec3<f32> = u_xlat1;
  let x_270 : f32 = u_xlat22;
  u_xlat9.y = dot(x_269, vec3<f32>(x_270, x_270, x_270));
  let x_275 : vec3<f32> = u_xlat9;
  let x_278 : vec4<f32> = x_91.x_TimeParameters;
  u_xlat3 = (vec4<f32>(x_275.y, x_275.y, x_275.z, x_275.z) + vec4<f32>(x_278.x, x_278.x, x_278.x, x_278.x));
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_281 * vec4<f32>(3.95000004768371582031f, 1.38600003719329833984f, 0.75f, 0.38600000739097595215f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_291 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_291 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat3 = fract(x_297);
  let x_299 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_299 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_304 : vec4<f32> = u_xlat3;
  let x_306 : vec4<f32> = u_xlat3;
  u_xlat4 = (abs(x_304) * abs(x_306));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = ((-(abs(x_309)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_316 : vec4<f32> = u_xlat4;
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_316 * x_317) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_322 : vec4<f32> = u_xlat3;
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.y, x_322.w, x_322.y) + vec3<f32>(x_324.x, x_324.z, x_324.x));
  let x_327 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_326.x, x_327.y, x_326.y, x_326.z);
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : vec3<f32> = u_xlat9;
  let x_333 : vec2<f32> = (vec2<f32>(x_329.x, x_329.y) * vec2<f32>(x_331.x, x_331.x));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_334.y, x_333.y, x_334.w);
  let x_337 : f32 = in_COLOR0.z;
  u_xlat3.y = ((x_337 * -0.34999999403953552246f) + 0.34999999403953552246f);
  let x_343 : vec4<f32> = u_xlat2;
  let x_345 : vec4<f32> = u_xlat3;
  let x_348 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_343.x, x_343.z, x_343.w) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + x_348);
  let x_350 : vec3<f32> = u_xlat1;
  let x_353 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_355 : vec3<f32> = (vec3<f32>(x_350.y, x_350.y, x_350.y) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_359 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_361 : vec3<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat2;
  let x_366 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_370 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_372 : vec3<f32> = u_xlat1;
  let x_375 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = ((vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.z, x_372.z, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat2;
  let x_383 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_385 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat2;
  let x_391 : vec4<f32> = x_91.unity_MatrixVP[1i];
  u_xlat4 = (vec4<f32>(x_388.y, x_388.y, x_388.y, x_388.y) * x_391);
  let x_394 : vec4<f32> = x_91.unity_MatrixVP[0i];
  let x_395 : vec4<f32> = u_xlat2;
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_394 * vec4<f32>(x_395.x, x_395.x, x_395.x, x_395.x)) + x_398);
  let x_401 : vec4<f32> = x_91.unity_MatrixVP[2i];
  let x_402 : vec4<f32> = u_xlat2;
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_401 * vec4<f32>(x_402.z, x_402.z, x_402.z, x_402.z)) + x_405);
  let x_407 : vec4<f32> = u_xlat4;
  let x_409 : vec4<f32> = x_91.unity_MatrixVP[3i];
  u_xlat4 = (x_407 + x_409);
  let x_417 : f32 = x_20.unity_MotionVectorsParams.z;
  let x_420 : f32 = u_xlat4.w;
  let x_423 : f32 = u_xlat4.z;
  gl_Position.z = ((-(x_417) * x_420) + x_423);
  let x_431 : f32 = x_20.unity_MotionVectorsParams.y;
  u_xlatb0 = !((x_431 == 0.0f));
  let x_433 : bool = u_xlatb0;
  if (x_433) {
    let x_437 : f32 = x_20.unity_MotionVectorsParams.x;
    u_xlatb0 = (x_437 == 1.0f);
    let x_439 : bool = u_xlatb0;
    if (x_439) {
      let x_443 : vec3<f32> = in_TEXCOORD4;
      let x_444 : vec3<f32> = in_TEXCOORD4;
      u_xlat0.x = dot(x_443, x_444);
      let x_448 : f32 = u_xlat0.x;
      u_xlat0.x = sqrt(x_448);
      let x_452 : vec3<f32> = in_TEXCOORD4;
      let x_455 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
      let x_457 : vec3<f32> = (vec3<f32>(x_452.y, x_452.y, x_452.y) * vec3<f32>(x_455.x, x_455.y, x_455.z));
      let x_458 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
      let x_461 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
      let x_463 : vec3<f32> = in_TEXCOORD4;
      let x_466 : vec4<f32> = u_xlat5;
      let x_468 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_463.x, x_463.x, x_463.x)) + vec3<f32>(x_466.x, x_466.y, x_466.z));
      let x_469 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
      let x_472 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
      let x_474 : vec3<f32> = in_TEXCOORD4;
      let x_477 : vec4<f32> = u_xlat5;
      let x_479 : vec3<f32> = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_474.z, x_474.z, x_474.z)) + vec3<f32>(x_477.x, x_477.y, x_477.z));
      let x_480 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
      let x_482 : vec4<f32> = u_xlat5;
      let x_485 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
      let x_487 : vec3<f32> = (vec3<f32>(x_482.x, x_482.y, x_482.z) + vec3<f32>(x_485.x, x_485.y, x_485.z));
      let x_488 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
      let x_491 : f32 = in_TEXCOORD4.y;
      u_xlat7.x = ((x_491 * 0.05000000074505805969f) + 1.0f);
      let x_496 : f32 = u_xlat7.x;
      let x_498 : f32 = u_xlat7.x;
      u_xlat7.x = (x_496 * x_498);
      let x_502 : f32 = u_xlat7.x;
      let x_504 : f32 = u_xlat7.x;
      let x_507 : f32 = u_xlat7.x;
      u_xlat7.x = ((x_502 * x_504) + -(x_507));
      let x_512 : vec2<f32> = u_xlat14;
      let x_513 : vec3<f32> = u_xlat7;
      let x_515 : vec2<f32> = (x_512 * vec2<f32>(x_513.x, x_513.x));
      let x_516 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_515.x, x_516.y, x_515.y, x_516.w);
      u_xlat6.y = 0.0f;
      let x_519 : vec4<f32> = u_xlat5;
      let x_521 : vec4<f32> = u_xlat6;
      u_xlat7 = (vec3<f32>(x_519.x, x_519.y, x_519.z) + vec3<f32>(x_521.x, x_521.y, x_521.z));
      let x_524 : vec3<f32> = u_xlat7;
      let x_527 : vec4<f32> = x_20.unity_WorldToObject[1i];
      let x_529 : vec3<f32> = (vec3<f32>(x_524.y, x_524.y, x_524.y) * vec3<f32>(x_527.x, x_527.y, x_527.z));
      let x_530 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
      let x_533 : vec4<f32> = x_20.unity_WorldToObject[0i];
      let x_535 : vec3<f32> = u_xlat7;
      let x_538 : vec4<f32> = u_xlat5;
      let x_540 : vec3<f32> = ((vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_535.x, x_535.x, x_535.x)) + vec3<f32>(x_538.x, x_538.y, x_538.z));
      let x_541 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
      let x_544 : vec4<f32> = x_20.unity_WorldToObject[2i];
      let x_546 : vec3<f32> = u_xlat7;
      let x_549 : vec4<f32> = u_xlat5;
      u_xlat7 = ((vec3<f32>(x_544.x, x_544.y, x_544.z) * vec3<f32>(x_546.z, x_546.z, x_546.z)) + vec3<f32>(x_549.x, x_549.y, x_549.z));
      let x_552 : vec3<f32> = u_xlat7;
      let x_554 : vec4<f32> = x_20.unity_WorldToObject[3i];
      u_xlat7 = (x_552 + vec3<f32>(x_554.x, x_554.y, x_554.z));
      let x_558 : vec3<f32> = u_xlat7;
      let x_559 : vec3<f32> = u_xlat7;
      u_xlat23 = dot(x_558, x_559);
      let x_561 : f32 = u_xlat23;
      u_xlat23 = inverseSqrt(x_561);
      let x_563 : vec3<f32> = u_xlat7;
      let x_564 : f32 = u_xlat23;
      u_xlat7 = (x_563 * vec3<f32>(x_564, x_564, x_564));
      let x_567 : vec3<f32> = u_xlat7;
      let x_568 : vec4<f32> = u_xlat0;
      let x_570 : vec3<f32> = (x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x));
      let x_571 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
      let x_573 : vec4<f32> = u_xlat0;
      let x_575 : f32 = u_xlat22;
      u_xlat5.x = dot(vec3<f32>(x_573.x, x_573.y, x_573.z), vec3<f32>(x_575, x_575, x_575));
      let x_580 : f32 = in_COLOR0.y;
      u_xlat5.y = (x_580 * 3.29999995231628417969f);
      let x_583 : vec4<f32> = u_xlat5;
      let x_586 : vec4<f32> = x_91.x_TimeParameters;
      u_xlat5 = (vec4<f32>(x_583.x, x_583.x, x_583.y, x_583.y) + vec4<f32>(x_586.x, x_586.x, x_586.x, x_586.x));
      let x_589 : vec4<f32> = u_xlat5;
      u_xlat5 = ((x_589 * vec4<f32>(3.95000004768371582031f, 1.38600003719329833984f, 0.75f, 0.38600000739097595215f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
      let x_592 : vec4<f32> = u_xlat5;
      u_xlat5 = ((x_592 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
      let x_595 : vec4<f32> = u_xlat5;
      u_xlat5 = fract(x_595);
      let x_597 : vec4<f32> = u_xlat5;
      u_xlat5 = ((x_597 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
      let x_600 : vec4<f32> = u_xlat5;
      let x_602 : vec4<f32> = u_xlat5;
      u_xlat6 = (abs(x_600) * abs(x_602));
      let x_605 : vec4<f32> = u_xlat5;
      u_xlat5 = ((-(abs(x_605)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
      let x_610 : vec4<f32> = u_xlat6;
      let x_611 : vec4<f32> = u_xlat5;
      u_xlat5 = ((x_610 * x_611) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
      let x_614 : vec4<f32> = u_xlat5;
      let x_616 : vec4<f32> = u_xlat5;
      let x_618 : vec3<f32> = (vec3<f32>(x_614.y, x_614.w, x_614.y) + vec3<f32>(x_616.x, x_616.z, x_616.x));
      let x_619 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
      let x_621 : vec4<f32> = u_xlat5;
      let x_623 : vec4<f32> = u_xlat3;
      let x_626 : vec4<f32> = u_xlat0;
      u_xlat1 = ((vec3<f32>(x_621.x, x_621.y, x_621.z) * vec3<f32>(x_623.x, x_623.y, x_623.z)) + vec3<f32>(x_626.x, x_626.y, x_626.z));
    }
    let x_629 : vec4<f32> = u_xlat2;
    let x_632 : vec4<f32> = x_91.x_NonJitteredViewProjMatrix[1i];
    let x_634 : vec3<f32> = (vec3<f32>(x_629.y, x_629.y, x_629.y) * vec3<f32>(x_632.x, x_632.y, x_632.w));
    let x_635 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
    let x_638 : vec4<f32> = x_91.x_NonJitteredViewProjMatrix[0i];
    let x_640 : vec4<f32> = u_xlat2;
    let x_643 : vec4<f32> = u_xlat0;
    let x_645 : vec3<f32> = ((vec3<f32>(x_638.x, x_638.y, x_638.w) * vec3<f32>(x_640.x, x_640.x, x_640.x)) + vec3<f32>(x_643.x, x_643.y, x_643.z));
    let x_646 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
    let x_649 : vec4<f32> = x_91.x_NonJitteredViewProjMatrix[2i];
    let x_651 : vec4<f32> = u_xlat2;
    let x_654 : vec4<f32> = u_xlat0;
    let x_656 : vec3<f32> = ((vec3<f32>(x_649.x, x_649.y, x_649.w) * vec3<f32>(x_651.z, x_651.z, x_651.z)) + vec3<f32>(x_654.x, x_654.y, x_654.z));
    let x_657 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
    let x_661 : vec4<f32> = u_xlat0;
    let x_664 : vec4<f32> = x_91.x_NonJitteredViewProjMatrix[3i];
    vs_CLIP_POSITION_NO_JITTER0 = (vec3<f32>(x_661.x, x_661.y, x_661.z) + vec3<f32>(x_664.x, x_664.y, x_664.w));
    let x_667 : vec3<f32> = u_xlat1;
    let x_671 : vec4<f32> = x_20.unity_MatrixPreviousM[1i];
    u_xlat0 = (vec4<f32>(x_667.y, x_667.y, x_667.y, x_667.y) * x_671);
    let x_674 : vec4<f32> = x_20.unity_MatrixPreviousM[0i];
    let x_675 : vec3<f32> = u_xlat1;
    let x_678 : vec4<f32> = u_xlat0;
    u_xlat0 = ((x_674 * vec4<f32>(x_675.x, x_675.x, x_675.x, x_675.x)) + x_678);
    let x_681 : vec4<f32> = x_20.unity_MatrixPreviousM[2i];
    let x_682 : vec3<f32> = u_xlat1;
    let x_685 : vec4<f32> = u_xlat0;
    u_xlat0 = ((x_681 * vec4<f32>(x_682.z, x_682.z, x_682.z, x_682.z)) + x_685);
    let x_687 : vec4<f32> = u_xlat0;
    let x_689 : vec4<f32> = x_20.unity_MatrixPreviousM[3i];
    u_xlat0 = (x_687 + x_689);
    let x_691 : vec4<f32> = u_xlat0;
    let x_694 : vec4<f32> = x_91.x_PrevViewProjMatrix[1i];
    u_xlat1 = (vec3<f32>(x_691.y, x_691.y, x_691.y) * vec3<f32>(x_694.x, x_694.y, x_694.w));
    let x_698 : vec4<f32> = x_91.x_PrevViewProjMatrix[0i];
    let x_700 : vec4<f32> = u_xlat0;
    let x_703 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_698.x, x_698.y, x_698.w) * vec3<f32>(x_700.x, x_700.x, x_700.x)) + x_703);
    let x_706 : vec4<f32> = x_91.x_PrevViewProjMatrix[2i];
    let x_708 : vec4<f32> = u_xlat0;
    let x_711 : vec3<f32> = u_xlat1;
    let x_712 : vec3<f32> = ((vec3<f32>(x_706.x, x_706.y, x_706.w) * vec3<f32>(x_708.z, x_708.z, x_708.z)) + x_711);
    let x_713 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
    let x_717 : vec4<f32> = x_91.x_PrevViewProjMatrix[3i];
    let x_719 : vec4<f32> = u_xlat0;
    let x_722 : vec4<f32> = u_xlat0;
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = ((vec3<f32>(x_717.x, x_717.y, x_717.w) * vec3<f32>(x_719.w, x_719.w, x_719.w)) + vec3<f32>(x_722.x, x_722.y, x_722.z));
  } else {
    vs_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
  }
  let x_727 : vec4<f32> = u_xlat4;
  let x_728 : vec3<f32> = vec3<f32>(x_727.x, x_727.y, x_727.w);
  let x_731 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_728.x, x_728.y, x_731.z, x_728.z);
  let x_735 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP0 = x_735;
  let x_737 : vec4<f32> = u_xlat2;
  vs_INTERP1 = vec3<f32>(x_737.x, x_737.y, x_737.z);
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


