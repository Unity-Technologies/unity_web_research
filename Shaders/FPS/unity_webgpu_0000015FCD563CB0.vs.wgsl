struct VGlobals {
  x_Time : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixInvV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_TreeInstanceScale : vec4<f32>,
  x_SquashPlaneNormal : vec4<f32>,
  x_SquashAmount : f32,
  @size(12)
  padding : u32,
  x_Wind : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var<uniform> x_13 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_22 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  u_xlat0 = (x_19 * vec4<f32>(x_22.y, x_22.y, x_22.y, x_22.y));
  let x_27 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_29 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_35 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_37 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_43 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_45 : vec4<f32> = x_13.unity_MatrixInvV[1i];
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_43 * vec4<f32>(x_45.w, x_45.w, x_45.w, x_45.w)) + x_48);
  let x_50 : vec4<f32> = u_xlat0;
  let x_54 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (x_50 * vec4<f32>(x_54.y, x_54.y, x_54.y, x_54.y));
  let x_59 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_61 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  u_xlat1 = (x_59 * vec4<f32>(x_61.y, x_61.y, x_61.y, x_61.y));
  let x_65 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_67 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_65 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_75 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_73 * vec4<f32>(x_75.z, x_75.z, x_75.z, x_75.z)) + x_78);
  let x_81 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_83 : vec4<f32> = x_13.unity_MatrixInvV[0i];
  let x_86 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_81 * vec4<f32>(x_83.w, x_83.w, x_83.w, x_83.w)) + x_86);
  let x_88 : vec3<f32> = in_NORMAL0;
  let x_90 : vec4<f32> = u_xlat1;
  let x_92 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_88.x, x_88.x, x_88.x, x_88.x) * x_90) + x_92);
  let x_95 : vec4<f32> = x_13.unity_WorldToObject[1i];
  let x_97 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  u_xlat1 = (x_95 * vec4<f32>(x_97.y, x_97.y, x_97.y, x_97.y));
  let x_101 : vec4<f32> = x_13.unity_WorldToObject[0i];
  let x_103 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_106 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_101 * vec4<f32>(x_103.x, x_103.x, x_103.x, x_103.x)) + x_106);
  let x_109 : vec4<f32> = x_13.unity_WorldToObject[2i];
  let x_111 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_109 * vec4<f32>(x_111.z, x_111.z, x_111.z, x_111.z)) + x_114);
  let x_117 : vec4<f32> = x_13.unity_WorldToObject[3i];
  let x_119 : vec4<f32> = x_13.unity_MatrixInvV[2i];
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_117 * vec4<f32>(x_119.w, x_119.w, x_119.w, x_119.w)) + x_122);
  let x_124 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec4<f32>(x_124.z, x_124.z, x_124.z, x_124.z) * x_126) + x_128);
  let x_132 : vec4<f32> = u_xlat1;
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(x_132, x_133);
  let x_135 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_135);
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : f32 = u_xlat12;
  let x_143 : vec3<f32> = in_NORMAL0;
  let x_146 : vec2<f32> = ((vec2<f32>(x_138.x, x_138.z) * vec2<f32>(x_140, x_140)) + -(vec2<f32>(x_143.x, x_143.z)));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_147.z, x_147.w);
  let x_155 : f32 = in_TANGENT0.w;
  u_xlat12 = (-(abs(x_155)) + 1.0f);
  let x_160 : f32 = u_xlat12;
  let x_162 : vec4<f32> = u_xlat1;
  let x_165 : vec3<f32> = in_NORMAL0;
  let x_167 : vec2<f32> = ((vec2<f32>(x_160, x_160) * vec2<f32>(x_162.x, x_162.y)) + vec2<f32>(x_165.x, x_165.z));
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat0;
  let x_172 : f32 = u_xlat12;
  let x_176 : vec4<f32> = in_POSITION0;
  let x_178 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172, x_172, x_172)) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = x_13.x_TreeInstanceScale;
  let x_187 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_193 : f32 = in_COLOR0.y;
  u_xlat12 = (x_193 * 0.100000001f);
  let x_196 : vec4<f32> = u_xlat1;
  let x_198 : f32 = u_xlat12;
  let x_200 : vec2<f32> = (vec2<f32>(x_196.x, x_196.y) * vec2<f32>(x_198, x_198));
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_200.x, x_201.y, x_200.y, x_201.w);
  let x_204 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat12 = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_209 : f32 = u_xlat12;
  let x_212 : f32 = in_COLOR0.x;
  u_xlat2.y = (x_209 + x_212);
  let x_216 : f32 = u_xlat2.y;
  let x_218 : f32 = in_COLOR0.y;
  u_xlat12 = (x_216 + x_218);
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : f32 = u_xlat12;
  u_xlat2.x = dot(vec3<f32>(x_220.x, x_220.y, x_220.z), vec3<f32>(x_222, x_222, x_222));
  let x_226 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = x_13.x_Time;
  u_xlat2 = (vec4<f32>(x_226.x, x_226.x, x_226.y, x_226.y) + vec4<f32>(x_229.y, x_229.y, x_229.y, x_229.y));
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_232 * vec4<f32>(1.975000024f, 0.792999983f, 0.375f, 0.193000004f));
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat2 = fract(x_239);
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_241 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = fract(x_248);
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_250 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_256 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat3 = (abs(x_256) * abs(x_258));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = ((-(abs(x_261)) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_268 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_268 * x_269);
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec4<f32> = u_xlat2;
  let x_275 : vec2<f32> = (vec2<f32>(x_271.y, x_271.w) + vec2<f32>(x_273.x, x_273.z));
  let x_276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat2;
  let x_282 : vec4<f32> = x_13.x_Wind;
  let x_284 : vec3<f32> = (vec3<f32>(x_278.y, x_278.y, x_278.y) * vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat3;
  let x_290 : vec4<f32> = in_TEXCOORD1;
  let x_292 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(x_290.y, x_290.y, x_290.y));
  let x_293 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : f32 = u_xlat2.y;
  let x_298 : f32 = in_TEXCOORD1.y;
  u_xlat1.y = (x_296 * x_298);
  u_xlat2.z = 0.300000012f;
  let x_304 : vec4<f32> = u_xlat2;
  let x_306 : vec4<f32> = u_xlat1;
  let x_309 : vec4<f32> = u_xlat3;
  let x_311 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.z, x_304.x) * vec3<f32>(x_306.x, x_306.y, x_306.z)) + vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat1;
  let x_317 : vec4<f32> = x_13.x_Wind;
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_317.w, x_317.w, x_317.w)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = in_TEXCOORD1;
  let x_328 : vec4<f32> = x_13.x_Wind;
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.x, x_325.x) * vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_338 : vec4<f32> = x_13.x_SquashPlaneNormal;
  let x_340 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : f32 = u_xlat12;
  let x_346 : f32 = x_13.x_SquashPlaneNormal.w;
  u_xlat12 = (x_343 + x_346);
  let x_348 : f32 = u_xlat12;
  let x_352 : vec4<f32> = x_13.x_SquashPlaneNormal;
  let x_355 : vec4<f32> = u_xlat0;
  let x_357 : vec3<f32> = ((-(vec3<f32>(x_348, x_348, x_348)) * vec3<f32>(x_352.x, x_352.y, x_352.z)) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat0;
  let x_362 : vec4<f32> = u_xlat1;
  let x_365 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) + -(vec3<f32>(x_362.x, x_362.y, x_362.z)));
  let x_366 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_370 : f32 = x_13.x_SquashAmount;
  let x_372 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = u_xlat1;
  let x_377 : vec3<f32> = ((vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_372.x, x_372.y, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat0;
  let x_383 : vec4<f32> = x_13.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_380.y, x_380.y, x_380.y, x_380.y) * x_383);
  let x_386 : vec4<f32> = x_13.unity_ObjectToWorld[0i];
  let x_387 : vec4<f32> = u_xlat0;
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_386 * vec4<f32>(x_387.x, x_387.x, x_387.x, x_387.x)) + x_390);
  let x_393 : vec4<f32> = x_13.unity_ObjectToWorld[2i];
  let x_394 : vec4<f32> = u_xlat0;
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_393 * vec4<f32>(x_394.z, x_394.z, x_394.z, x_394.z)) + x_397);
  let x_399 : vec4<f32> = u_xlat0;
  let x_401 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat0 = (x_399 + x_401);
  let x_403 : vec4<f32> = u_xlat0;
  let x_407 : vec4<f32> = x_13.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_403.y, x_403.y, x_403.y, x_403.y) * x_407);
  let x_410 : vec4<f32> = x_13.unity_MatrixVP[0i];
  let x_411 : vec4<f32> = u_xlat0;
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_410 * vec4<f32>(x_411.x, x_411.x, x_411.x, x_411.x)) + x_414);
  let x_417 : vec4<f32> = x_13.unity_MatrixVP[2i];
  let x_418 : vec4<f32> = u_xlat0;
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_417 * vec4<f32>(x_418.z, x_418.z, x_418.z, x_418.z)) + x_421);
  let x_425 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = x_425;
  let x_430 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = x_13.unity_MatrixVP[3i];
  gl_Position = (x_430 + x_432);
  let x_438 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_438.x, x_438.y);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(5) in_COLOR0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0);
}

