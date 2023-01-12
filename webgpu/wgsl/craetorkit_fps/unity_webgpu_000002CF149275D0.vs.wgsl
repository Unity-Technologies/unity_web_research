struct VGlobals {
  x_SinTime : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
  unity_MetaVertexControl : vec4<u32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(3) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(6) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatb12 : bool;
  var x_167 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var x_202 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_25 : f32 = x_21.x_DisplacementScale;
  let x_27 : f32 = x_21.x_DisplacementScale;
  let x_29 : f32 = x_21.x_DisplacementScale;
  let x_30 : vec3<f32> = vec3<f32>(x_25, x_27, x_29);
  let x_35 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_30.x, x_30.y, x_30.z));
  let x_36 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_35.x, x_35.y, x_35.z, x_36.w);
  let x_38 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = in_COLOR0;
  let x_43 : vec3<f32> = (vec3<f32>(x_38.x, x_38.y, x_38.z) * vec3<f32>(x_41.z, x_41.z, x_41.z));
  let x_44 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_43.x, x_43.y, x_43.z, x_44.w);
  let x_50 : f32 = x_21.x_SinTime.y;
  let x_53 : f32 = x_21.x_DisplacementSpeed;
  u_xlat1.y = (x_50 * x_53);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_62 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = in_COLOR0;
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_64.y, x_64.y, x_64.y)) + vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_82.x, x_82.y, x_82.z), 0.0f);
  u_xlat0 = x_84;
  let x_90 : i32 = x_21.x_DisplacementIndex;
  u_xlati1 = x_90;
  let x_91 : vec4<f32> = u_xlat0;
  let x_100 : i32 = u_xlati1;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_105 : vec4<u32> = indexable[x_100];
  u_xlat0.x = dot(x_91, bitcast<vec4<f32>>(x_105));
  let x_110 : f32 = u_xlat0.x;
  let x_113 : f32 = x_21.x_Displacement;
  u_xlat0.x = (x_110 * x_113);
  let x_117 : f32 = u_xlat0.x;
  let x_120 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_117 * x_120);
  let x_125 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = in_POSITION0;
  let x_131 : vec3<f32> = ((x_125 * vec3<f32>(x_126.x, x_126.x, x_126.x)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_138 : f32 = u_xlat0.z;
  u_xlatb12 = (0.0f < x_138);
  let x_140 : bool = u_xlatb12;
  u_xlat1.z = select(0.0f, 0.0001f, x_140);
  let x_146 : vec4<f32> = in_TEXCOORD1;
  let x_151 : vec4<f32> = x_21.unity_LightmapST;
  let x_155 : vec4<f32> = x_21.unity_LightmapST;
  let x_157 : vec2<f32> = ((vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_151.x, x_151.y)) + vec2<f32>(x_155.z, x_155.w));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_158.z, x_158.w);
  let x_164 : u32 = x_21.unity_MetaVertexControl.x;
  if ((x_164 != 0u)) {
    let x_170 : vec4<f32> = u_xlat1;
    x_167 = vec3<f32>(x_170.x, x_170.y, x_170.z);
  } else {
    let x_173 : vec4<f32> = u_xlat0;
    x_167 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  }
  let x_175 : vec3<f32> = x_167;
  let x_176 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : f32 = u_xlat1.z;
  u_xlatb12 = (0.0f < x_179);
  let x_182 : bool = u_xlatb12;
  u_xlat2.z = select(0.0f, 0.0001f, x_182);
  let x_186 : vec4<f32> = in_TEXCOORD2;
  let x_190 : vec4<f32> = x_21.unity_DynamicLightmapST;
  let x_194 : vec4<f32> = x_21.unity_DynamicLightmapST;
  let x_196 : vec2<f32> = ((vec2<f32>(x_186.x, x_186.y) * vec2<f32>(x_190.x, x_190.y)) + vec2<f32>(x_194.z, x_194.w));
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_196.x, x_196.y, x_197.z, x_197.w);
  let x_200 : u32 = x_21.unity_MetaVertexControl.y;
  if ((x_200 != 0u)) {
    let x_205 : vec4<f32> = u_xlat2;
    x_202 = vec3<f32>(x_205.x, x_205.y, x_205.z);
  } else {
    let x_208 : vec4<f32> = u_xlat1;
    x_202 = vec3<f32>(x_208.x, x_208.y, x_208.z);
  }
  let x_210 : vec3<f32> = x_202;
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_218 : vec4<f32> = x_21.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_213.y, x_213.y, x_213.y, x_213.y) * x_218);
  let x_221 : vec4<f32> = x_21.unity_MatrixVP[0i];
  let x_222 : vec4<f32> = u_xlat1;
  let x_225 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_221 * vec4<f32>(x_222.x, x_222.x, x_222.x, x_222.x)) + x_225);
  let x_229 : vec4<f32> = x_21.unity_MatrixVP[2i];
  let x_230 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_229 * vec4<f32>(x_230.z, x_230.z, x_230.z, x_230.z)) + x_233);
  let x_239 : vec4<f32> = u_xlat1;
  let x_242 : vec4<f32> = x_21.unity_MatrixVP[3i];
  gl_Position = (x_239 + x_242);
  let x_249 : vec4<f32> = in_TEXCOORD0;
  let x_253 : vec4<f32> = x_21.x_MainTex_ST;
  let x_257 : vec4<f32> = x_21.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_253.x, x_253.y)) + vec2<f32>(x_257.z, x_257.w));
  let x_260 : vec4<f32> = u_xlat0;
  let x_263 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_265 : vec3<f32> = (vec3<f32>(x_260.y, x_260.y, x_260.y) * vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_269 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_271 : vec4<f32> = u_xlat0;
  let x_274 : vec4<f32> = u_xlat1;
  let x_276 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.y, x_269.z) * vec3<f32>(x_271.x, x_271.x, x_271.x)) + vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_276.z);
  let x_280 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_282 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = u_xlat0;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.z, x_282.z, x_282.z)) + vec3<f32>(x_285.x, x_285.y, x_285.w));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_291 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_293 : vec4<f32> = in_POSITION0;
  let x_296 : vec4<f32> = u_xlat0;
  let x_298 : vec3<f32> = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.w, x_293.w, x_293.w)) + vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_303 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_303;
  let x_307 : vec3<f32> = in_NORMAL0;
  let x_309 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_307, vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec3<f32> = in_NORMAL0;
  let x_315 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_313, vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : vec3<f32> = in_NORMAL0;
  let x_321 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_319, vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_332 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_332);
  let x_335 : vec4<f32> = u_xlat0;
  let x_337 : vec4<f32> = u_xlat1;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.x, x_335.x) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : vec4<f32> = in_TANGENT0;
  let x_346 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_348 : vec3<f32> = (vec3<f32>(x_343.y, x_343.y, x_343.y) * vec3<f32>(x_346.y, x_346.z, x_346.x));
  let x_349 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_352 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_354 : vec4<f32> = in_TANGENT0;
  let x_357 : vec4<f32> = u_xlat2;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.y, x_352.z, x_352.x) * vec3<f32>(x_354.x, x_354.x, x_354.x)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_363 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_365 : vec4<f32> = in_TANGENT0;
  let x_368 : vec4<f32> = u_xlat2;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.y, x_363.z, x_363.x) * vec3<f32>(x_365.z, x_365.z, x_365.z)) + vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat2;
  let x_375 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_373.x, x_373.y, x_373.z), vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_380 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_380);
  let x_383 : vec4<f32> = u_xlat0;
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec3<f32> = (vec3<f32>(x_383.x, x_383.x, x_383.x) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat1;
  let x_398 : vec4<f32> = u_xlat2;
  let x_401 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_396.z, x_396.x, x_396.y) * vec3<f32>(x_398.y, x_398.z, x_398.x)) + -(x_401));
  let x_405 : f32 = in_TANGENT0.w;
  let x_407 : f32 = x_21.unity_WorldTransformParams.w;
  u_xlat0.x = (x_405 * x_407);
  let x_410 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_410.x, x_410.x, x_410.x) * x_412);
  let x_415 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_415;
  let x_418 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_418;
  let x_421 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_421;
  let x_425 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_425;
  let x_429 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_429;
  let x_432 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_432;
  let x_435 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_435;
  let x_438 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_438;
  let x_441 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_441;
  let x_444 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_444;
  let x_447 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_447;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(6) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(5) in_TEXCOORD2_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

